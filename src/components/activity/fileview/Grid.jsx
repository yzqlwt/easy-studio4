import React from 'react';
import { connect } from 'react-redux';
import { Card, List, Row, Col, Dropdown } from 'antd';
import ReactCustomScrollBars from 'react-custom-scrollbars';
import { ContextMenu, MenuItem, ContextMenuTrigger } from 'react-contextmenu';
import { map, debounce, isEmpty, filter } from 'lodash';
import { getAddonPath, getIconPath } from '../../../common/global';
import { addWatcher } from '../../../common/watcher';
import './index.scss';
import  fs from 'fs-extra';
const addon = window.require(getAddonPath());
const fpath = window.require('path');

const gridConfig = {
  gutter: 10,
  xs: 3,
  sm: 4,
  md: 5,
  lg: 5,
  xl: 6,
  xxl: 10
};

const previews = {
  '.mp3': 'mp3.png',
  '.swf': 'swf.png',
  '.json': 'json.png',
  '.csb': 'file.png',
  '.plist': 'plist.png'
};

class Index extends React.Component {
  state = {
    isChanged: false
  };

  getData() {
    const { folder, dataPaths } = this.props;
    const path = dataPaths[folder + 'Path'];
    if (!fs.existsSync(path)) return [];
    if (path.indexOf("res/ui")<0) return [];
    const strList = addon.getFolder(path);
    if (isEmpty(strList)) return [];
    let list = strList.split(',');
    list = filter(list, (elem) => {
      const extension = fpath.extname(elem);
      return extension !== '.csd';
    });
    let data = map(list, (elem) => {
      const isFile = fs.lstatSync(path + '/' + elem).isFile();
      return {
        title: elem,
        path: path + '/' + elem,
        icon: isFile ? this.getPreview(path + '/' + elem) : getIconPath('folder.png'),
        isFile: isFile
      };
    });
    return data;
  }

  getPreview(path) {
    const extension = fpath.extname(path);
    const icon = previews[extension];
    if (extension == '.png') {
      return path;
    }
    if (!icon) {
      return getIconPath('file.png');
    } else {
      return getIconPath(icon);
    }
  }

  componentDidMount() {
    const { folder } = this.props;
    const { dataPaths } = this.props;
    const path = dataPaths[folder + 'Path'];
    this.watcher = addWatcher(path, debounce(this.handleFilesChange, 20));
  }

  componentWillReceiveProps(nextProps) {
    const { dataPaths } = nextProps;
    const { dataPaths: oldData } = this.props;
    const { folder } = this.props;
    const path = dataPaths[folder + 'Path'];
    const oldPath = oldData[folder + 'Path'];
    if (!this.watcher) {
      this.watcher = addWatcher(path, debounce(this.handleFilesChange, 20));
    } else {
      if (path !== oldPath) {
        this.watcher.close();
        this.watcher = addWatcher(path, debounce(this.handleFilesChange, 20));
      }
    }
  }

  handleFilesChange = (event, file) => {
    this.setState({
      isChanged: !this.state.isChanged
    });
  };

  handleChangePath = (path) => {
    const { dispatch, folder, dataPaths } = this.props;
    let pathState = dataPaths;
    pathState[folder + 'Path'] = path;
    dispatch({
      type: "dataPaths",
      assetsPath: pathState.assetsPath,
      skinPath: pathState.skinPath,
    });
  };

  render() {
    const data = this.getData();
    const {folder} = this.props;
    return (
      <div className="grid">
        <ContextMenuTrigger id={"list_ContextMenuTrigger"+folder} className="context">
          <ReactCustomScrollBars
            autoHide
            autoHideTimeout={600}
            autoHideDuration={400}
          >
            <List
              grid={gridConfig}
              dataSource={data}
              renderItem={(item) => (
                <List.Item>
                  <Card
                    bodyStyle={{ padding: '2px 3px 0px' }}
                    hoverable
                    onDoubleClick={() => {
                      const isFile = item.isFile;
                      if (!isFile) {
                        this.handleChangePath(item.path);
                      }
                    }}
                  >
                    <Col className="col">
                      <Row align="center">
                        <img src={item.icon} alt={item.path} className="img" />
                      </Row>
                      <Row align="center">
                        <b className="b">{item.title}</b>
                      </Row>
                    </Col>
                  </Card>
                </List.Item>
              )}
            />
          </ReactCustomScrollBars>
        </ContextMenuTrigger>
        <ContextMenu id={"list_ContextMenuTrigger"+folder}  className="context-menu">
          <MenuItem  onClick={() => {
            const { folder } = this.props;
            const { dataPaths } = this.props;
            const path = dataPaths[folder + 'Path'];
            console.log(path);
            addon.gotoFolder(path);
          }}>
            前往文件夹
          </MenuItem>
          <MenuItem  onClick={() => {
            this.setState({
              isChanged: !this.state.isChanged
            });
          }}>
            刷新
          </MenuItem>
        </ContextMenu>
      </div>
    );
  }
}

function stateToProps(state) {
  const { dataPaths } = state;
  return { dataPaths };
}

export default connect(stateToProps)(Index);
