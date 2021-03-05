import React from 'react';
import { withRouter } from 'react-router-dom';
import { connect } from 'react-redux';
import { Button, Tag, Image, Card, List, Row, Col, Dropdown, Menu } from 'antd';
import ReactCustomScrollBars from 'react-custom-scrollbars';
import { map, last, find } from 'lodash';
import { getAddonPath, getIconPath } from '../../common/global';
import { addWatcher } from '../../common/watcher';
const addon = window.require(getAddonPath());
const fs = window.require('fs');

class Index extends React.Component {
    state = {
        path: '',
        data: [],
    };

    getData() {
        const path = this.state.path;
        if (path === '') return [];
        const list = addon.getFolder(path).split(',');
        console.log(list);
        let data = map(list, (elem) => {
            const isFile = fs.lstatSync(path + '/' + elem).isFile();
            return {
                title: elem,
                path: path + '/' + elem,
                icon: isFile
                    ? getIconPath('file.png')
                    : getIconPath('folder.png'),
                isFile: isFile,
            };
        });
        return data;
    }

    componentDidMount() {
        let path = this.props.path;
        path = path ? path : 'C:/Users/yzqlwt/Desktop/Resource';
        this.setState({
            path: path,
        });
        const ipcRenderer = global.require('electron').ipcRenderer;
        ipcRenderer.on('c-v', (type) => {
            console.log('setting');
        });

    }
    onKeyDown = function(){
        if (!this.props.disable){
            console.log('按下', this.state.path, this);
        }
    };

    render() {
        const data = this.getData();
        return (
            <div style={{ height: '100%' }}>
                <ReactCustomScrollBars
                    autoHide
                    autoHideTimeout={600}
                    autoHideDuration={400}
                >
                    <List
                        grid={{
                            gutter: 10,
                            xs: 1,
                            sm: 2,
                            md: 8,
                            lg: 8,
                            xl: 12,
                            xxl: 14,
                        }}
                        dataSource={data}
                        renderItem={(item) => (
                            <List.Item>
                                <Card
                                    bodyStyle={{ padding: '2px 3px 0px' }}
                                    hoverable
                                    onClick={() => {
                                        const isFile = item.isFile;
                                        if (!isFile) {
                                            this.setState({
                                                path: item.path,
                                            });
                                        }
                                    }}
                                >
                                    <Col style={{ width: '100%' }}>
                                        <Row align="center">
                                            <img
                                                src={item.icon}
                                                alt={item.path}
                                                style={{
                                                    height: 60,
                                                    width: 'auto',
                                                    maxWidth: '99%',
                                                }}
                                            />
                                        </Row>
                                        <Row align="center">
                                            <b
                                                style={{
                                                    wordBreak: 'break-all',
                                                    width: '100%',
                                                    textAlign: 'center',
                                                }}
                                            >
                                                {item.title}
                                            </b>
                                        </Row>
                                    </Col>
                                </Card>
                            </List.Item>
                        )}
                    />
                </ReactCustomScrollBars>
            </div>

        );
    }
}

function stateToProps() {
    return {};
}

export default connect(stateToProps)(Index);
