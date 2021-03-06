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
  imagesPath = "D:/fla2csd";
  othersPath = "E:/flash";

  componentWillReceiveProps(nextProps) {
    const { dataFiles, dispatch } = nextProps;
    const { folder } = dataFiles;
    if (folder != this.state.activeKey) {
      this.setState({
        activeKey: folder
      })
    }
  }

  componentDidMount() {
    const {dispatch } = this.props;
    dispatch({
      type: "imagesPath",
      path: this.imagesPath
    })
    dispatch({
      type: "othersPath",
      path: this.othersPath
    })
  }

  onChange = (key) => {
    const {dispatch } = this.props;
    dispatch({
      type: "folder",
      folder: key
    })
    dispatch({
      type: "imagesPath",
      path: this.imagesPath
    })
    dispatch({
      type: "othersPath",
      path: this.othersPath
    })
  };

  onKeyDown = () => {
    const {dispatch, dataFiles } = this.props;
    const { folder } = dataFiles;
    const path = dataFiles[folder+"Path"];
    console.log('按下', path);
  };

  render() {
    return (
      <Layout style={{ height: '100%' }}>
        <Layout.Content theme="light" style={{ padding: 30 }}>
          <div className="card-container" ref={this.others}>
            <Hotkeys keyName="control+v" onKeyDown={this.onKeyDown}>
              <Tabs
                type="card"
                onChange={this.onChange}
                activeKey={this.state.activeKey}
              >
                <TabPane tab="图片" key="images">
                  <FileView
                    folder="images"
                  ></FileView>
                </TabPane>
                <TabPane tab="动画及其他" key="others">
                  <FileView
                    folder="others"
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

function stateToProps(state) {
  const { dataFiles } = state;
  return { dataFiles };
}

export default withRouter(connect(stateToProps)(Index));
