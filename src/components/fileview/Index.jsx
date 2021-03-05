import React from 'react';
import { withRouter } from 'react-router-dom';
import { connect } from 'react-redux';
import Hotkeys from 'react-hot-keys';
import './tabs.less';
import {
    Button,
    Tag,
    Image,
    Card,
    List,
    Row,
    Col,
    Dropdown,
    Menu,
    Tabs,
    Layout,
} from 'antd';
import ReactCustomScrollBars from 'react-custom-scrollbars';
import { map, last, find } from 'lodash';
import { getAddonPath, getIconPath } from '../../common/global';
import { addWatcher } from '../../common/watcher';
import FileView from './FileView';
const addon = window.require(getAddonPath());
const fs = window.require('fs');
const { TabPane } = Tabs;
class Index extends React.Component {
    state = {
        activeKey: 'images',
    };

    images = React.createRef();
    others = React.createRef();

    componentDidMount() {
        console.log(this.images)
        console.log(this.others)
    }

    onChange = (activeKey) => {
        this.setState({ activeKey });
    };

    onKeyDown = () => {
        console.log("按下")
        console.log(this.images)
        console.log(this.others)
    }

    render() {
        return (
            <Layout style={{ height: '100%' }}>
                <Layout.Content theme="light" style={{ padding: 30 }}>
                    <div className="card-container" ref={this.others}>
                        <Hotkeys
                            keyName="control+v"
                            onKeyDown={this.onKeyDown}
                        >
                            <Tabs
                                type="card"
                                onChange={this.onChange}
                                activeKey={this.state.activeKey}
                            >
                                <TabPane tab="图片" key="images">
                                    <FileView
                                        path="D:/files"
                                        ref={this.images}
                                        disable={
                                            this.state.activeKey !== 'images'
                                        }
                                    ></FileView>
                                </TabPane>
                                <TabPane tab="动画及其他" key="others">
                                    <FileView
                                        path="D:/project"
                                        disable={
                                            this.state.activeKey !== 'images'
                                        }
                                    ></FileView>
                                </TabPane>
                            </Tabs>
                        </Hotkeys>
                    </div>
                </Layout.Content>
            </Layout>
        );
    }
}

function stateToProps() {
    return {};
}

export default withRouter(connect(stateToProps)(Index));
