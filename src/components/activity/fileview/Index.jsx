import React from 'react';
import { connect } from 'react-redux';
import Hotkeys from 'react-hot-keys';
import {
  Tabs,
} from 'antd';
import { isEqual, get, find, each } from 'lodash';
import { getAddonPath, getTpPath } from '../../../common/global';
import Grid from './Grid';
import {
  isFetchLoading,
} from '../../../common/library';
import './tabs.less';
import './index.scss';
import fs from 'fs-extra';
const addon = window.require(getAddonPath());
const fpath = window.require('path');

const { TabPane } = Tabs;

class Index extends React.Component {

  state = {
    activeFolder: "skin"
  }

  componentWillReceiveProps(nextProps, nextContext) {
    const { dataProperty } = nextProps;
    const { dataProperty : oldData, dispatch} = this.props;
    if(!isFetchLoading(dataProperty)){
      const property = this.getPathProperty(dataProperty);
      const oldProperty = this.getPathProperty(oldData);
      if (!isEqual(property, oldProperty)){
          dispatch({
            type: 'dataPaths',
            skinPath: addon.getSkinFullPath(),
            assetsPath: addon.getAssetsFullPath(),
            outputPath: addon.getOutputFullPath(),
          });
      }
    }
  }

  componentDidMount() {
    addon.setCCSPath("C:\\Users\\yzqlwt\\Documents\\WorkSpace\\cocos-ui\\mangomath-ui\\CocosProject.ccs");
    addon.setTPPath(getTpPath());
    const { dispatch} = this.props;
    dispatch({
      type: 'dataPaths',
      skinPath: addon.getSkinFullPath(),
      assetsPath: addon.getAssetsFullPath(),
      outputPath: addon.getOutputFullPath(),
    });
  }

  getPathProperty(dataProperty){
    const property = find(get(dataProperty, 'response', []), (property) => property.name == 'path');
    if (property) {
      return property;
    }
    return {}
  }


  onPaste = () => {
    const { dataPaths } = this.props;
    const folder  = this.state.activeFolder;
    const path = dataPaths[folder + 'Path'];
    const files = addon.getClipboardFiles().split(',');
    each(files, (file) => {
      if (fs.existsSync(file)) {
        const name = fpath.basename(file);
        const newPath = fpath.join(path, name);
        fs.copySync(file, newPath);
      }
    });
  };

  getCanShow() {
    const { dataTemplateSkinId } = this.props;
    const isShow = dataTemplateSkinId.templateId && dataTemplateSkinId.skinId;
    return isShow;
  }

  render() {
    const isShow = this.getCanShow();
    return (
      isShow ? <div className="file-view">
        <div className="card-container" ref={this.others}>
          <Hotkeys keyName="control+v" onKeyDown={this.onPaste}>
            <Tabs
              type="card"
              onChange={(key)=>{
                this.setState({
                  activeFolder: key
                })
                const { dispatch } = this.props;
                dispatch({
                  type: 'dataPaths',
                  skinPath: addon.getSkinFullPath(),
                  assetsPath: addon.getAssetsFullPath(),
                  outputPath: addon.getOutputFullPath(),
                });
              }}
              activeKey={this.state.activeFolder}
            >
              <TabPane tab="图片" key="skin">
                <Grid folder="skin"></Grid>
              </TabPane>
              <TabPane tab="动画及其他" key="assets">
                <Grid folder="assets"></Grid>
              </TabPane>
              <TabPane tab="压缩包内文件" key="output">
                <Grid folder="output"></Grid>
              </TabPane>
            </Tabs>
          </Hotkeys>
        </div>
      </div> : <div></div>
    );
  }
}

function stateToProps(state) {
  const { dataPaths, dataTemplateSkinId, dataProperty } = state;
  return { dataPaths, dataProperty, dataTemplateSkinId };
}

export default connect(stateToProps)(Index);
