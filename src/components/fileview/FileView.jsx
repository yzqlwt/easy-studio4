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
    data: [],
  };

  getData() {
    const {folder, dataFiles} = this.props
    const path = dataFiles[folder+"Path"];
    console.log(path, folder+"Path", this.props)
    if (!fs.existsSync(path)) return [];
    const list = addon.getFolder(path).split(',');
    let data = map(list, (elem) => {
      const isFile = fs.lstatSync(path + '/' + elem).isFile();
      return {
        title: elem,
        path: path + '/' + elem,
        icon: isFile ? getIconPath('file.png') : getIconPath('folder.png'),
        isFile: isFile,
      };
    });
    return data;
  }

  componentDidMount() {
    const path = this.props.path;
    this.setState({
      path: path,
    });
  }

  componentWillReceiveProps(nextProps){
    const { dataFiles, dispatch } = nextProps;
    const { folder } = dataFiles;
  }

  handleChange = (path) => {
    const {dispatch, folder} = this.props;
    dispatch({
      type: folder+"Path",
      path: path
    })
  }

  render() {
    console.error("render", this.props.folder)
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
              xs: 3,
              sm: 4,
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
                      this.handleChange(item.path);
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

function stateToProps(state) {
  const { dataFiles } = state;
  return { dataFiles };
}

export default connect(stateToProps)(Index);
