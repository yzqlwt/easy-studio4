import React from 'react';
import { withRouter } from 'react-router-dom';
import { connect } from 'react-redux';
import fs from "fs-extra";
import { Upload, Button, Space } from 'antd';
import { getCCSPath, setCCSPath } from '../../common/global';
import { InboxOutlined } from '@ant-design/icons';
import './index.scss'

const { Dragger } = Upload;

class Index extends React.Component {

  state = {
    isChanged: false
  }

  fileProps = {
    name: 'file',
    multiple: false,
    showUploadList: false,
    onChange: (info)=>{
      const { status } = info.file;
      setCCSPath(info.file.path);
      this.setState({
        isChanged: !this.state.isChanged
      })
    },
    beforeUpload: this.beforeUpload,
  };
  componentWillMount() {
    const path = getCCSPath();
    let props = this.fileProps;
    if (path){
      props.defaultFileList = [
        {
          name: path,
          path: path,
          status: 'done',
        }
      ]
    }
  }
  componentDidMount() {
    const path = getCCSPath();
    if (path){
      this.props.history.push("/activity")
    }
  }

  beforeUpload(file) {
    return file.name.indexOf(".ccs") != -1 ? true : Upload.LIST_IGNORE;
  }

  render() {
    return (
      <div className={"setting-content"}>
        <Space direction={'vertical'} className={"setting-wrapper"} >
          <Dragger {...this.fileProps}>
            <p className="ant-upload-drag-icon">
              <InboxOutlined />
            </p>
            <p className="ant-upload-text">Click or drag file to this area to set the ccs path</p>
            <p className="ant-upload-hint">
              { getCCSPath() }
            </p>
          </Dragger>
          <Button type="primary" block onClick={()=>{
            this.props.history.push('/activity');
          }}>
            确定
          </Button>
        </Space>
      </div>
    );
  }
}

function stateToProps() {
  return {};
}

export default withRouter(connect(stateToProps)(Index));
