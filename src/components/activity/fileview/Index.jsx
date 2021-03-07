import React from 'react';
import { connect } from 'react-redux';
import Hotkeys from 'react-hot-keys';
import {
  Tabs,
} from 'antd';
import { isEqual, get, find, each } from 'lodash';
import { getAddonPath } from '../../../common/global';
import Grid from './Grid';
import {
  isFetchLoading,
} from '../../../common/library';
import './tabs.less';
import './index.scss';

const addon = window.require(getAddonPath());
const fs = window.require('fs-extra');
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
          const path = property.content ? property.content : "";
          addon.setSkinPath(path);
          dispatch({
            type: 'curViewPath',
            skinPath: addon.getSkinFullPath(),
            assetsPath: addon.getAssetsFullPath(),
          });
      }
    }
  }

  componentDidMount() {
    addon.setCCSPath("C:\\Users\\yzqlwt\\Documents\\WorkSpace\\cocos-ui\\mangomath-ui\\CocosProject.ccs");
  }

  getPathProperty(dataProperty){
    const property = find(get(dataProperty, 'response', []), (property) => property.name == 'path');
    if (property) {
      return property;
    }
    return {}
  }


  onPaste = () => {
    const { curViewPath } = this.props;
    const folder  = this.state.activeFolder;
    const path = curViewPath[folder + 'Path'];
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
              }}
              activeKey={this.state.activeFolder}
            >
              <TabPane tab="图片" key="skin">
                <Grid folder="skin"></Grid>
              </TabPane>
              <TabPane tab="动画及其他" key="assets">
                <Grid folder="assets"></Grid>
              </TabPane>
            </Tabs>
          </Hotkeys>
        </div>
      </div> : <div></div>
    );
  }
}

function stateToProps(state) {
  const { curViewPath, dataTemplateSkinId, dataProperty } = state;
  return { curViewPath, dataProperty, dataTemplateSkinId };
}

export default connect(stateToProps)(Index);
