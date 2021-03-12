import React from 'react';
import { Menu, PageHeader, Button, Descriptions, Dropdown, message } from 'antd';
import { get, last, find } from 'lodash';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import StepsView from './StepsView';
import { fetchProperty } from '../../actions/property';
import { EllipsisOutlined } from '@ant-design/icons';
import './index.scss';
import { getAddonPath } from '../../common/global';
import { EventEmitter } from 'events';
const addon = window.require(getAddonPath());
const emitter = new EventEmitter();

class Index extends React.Component {
  state = {
    isShowProgress: false,
  };

  fetchProperties = (skinId) => {
    const { dispatch } = this.props;
    dispatch(fetchProperty({ itemId: skinId, itemType: 'Skin' }));
  };

  componentWillReceiveProps(nextProps, nextContext) {
    const { dataTemplateSkinId } = nextProps;
    const { skinId } = dataTemplateSkinId;
    const { dataTemplateSkinId: oldData } = this.props;
    if (skinId != oldData.skinId) {
      this.fetchProperties(skinId);
    }
  }
  componentDidMount() {
    const { dispatch } = this.props;
    emitter.on('visible', (data) => {
      console.log(data, 'visible');
      data = JSON.parse(data);
      dispatch({
        type: 'visible',
        title: data.title,
        status: data.status,
      });
    });
    emitter.on('tiny', (data) => {
      console.log(data, 'tiny');
      data = JSON.parse(data);
      // dispatch({
      //   type: 'tiny',
      //   title: data.title,
      //   status: data.status,
      //   description: data.description,
      // });
      message.info(data.title);
    });
    emitter.on('package', (data) => {
      console.log(data, 'package');
      data = JSON.parse(data);
      dispatch({
        type: 'package',
        title: data.title,
        status: data.status,
        description: data.description,
      });
    });
    emitter.on('upload', (data) => {
      console.log(data, 'upload');
      data = JSON.parse(data);
      dispatch({
        type: 'upload',
        title: data.title,
        status: data.status,
      });
    });
  }



  getSkinData() {
    const { dataSkin, dataTemplateSkinId } = this.props;
    const { skinId, templateId } = dataTemplateSkinId;
    const templateType = 'ActivityTemplate';
    const targetSkin = get(dataSkin, templateType + '_' + templateId);
    if (targetSkin) {
      return find(get(targetSkin, 'response', []), (skin) => skin.id == skinId);
    }
    return null;
  }

  getPath() {
    const { dataProperty } = this.props;
    const property = find(
      get(dataProperty, 'response', []),
      (property) => property.name == 'path'
    );
    if (property) {
      return property.content;
    }
    return '未设置Path';
  }

  menu = (
    <Menu>
      <Menu.Item
        key="download"
        onClick={() => {
          console.log('click 从后台导入');
        }}
      >
        从后台导入
      </Menu.Item>
      <Menu.Item
        key="cache"
        onClick={() => {
          console.log('click 客户端缓存');
        }}
      >
        客户端缓存
      </Menu.Item>
      <Menu.Item
        key="history"
        onClick={() => {
          console.log('click 客户端缓存');
        }}
      >
        历史记录
      </Menu.Item>
    </Menu>
  );

  renderHeader() {
    const data = this.getSkinData();
    return data ? (
      <PageHeader
        ghost={false}
        title={data.name || 'undefined'}
        subTitle=""
        extra={[
          <Button
            key="1"
            type="primary"
            onClick={() => {
              console.log('click images');
              const { dispatch } = this.props;
              const { dataTemplateSkinId } = this.props;
              addon.setSkinId(dataTemplateSkinId.skinId);
              dispatch({
                type: "visible",
                title: 'true',
              })
              dispatch({
                type: "tiny",
                title: '压缩图片',
                status: "process",
              })

              setTimeout(() =>{
                addon.tiny()
                dispatch({
                  type: "tiny",
                  title: '压缩图片',
                  status: "finish",
                })
                dispatch({
                  type: "package",
                  title: '打包',
                  status: "process",
                })
                setTimeout(() => {
                  addon.package()
                  dispatch({
                    type: "package",
                    title: '打包',
                    status: "finish",
                  })
                  dispatch({
                    type: "upload",
                    title: '上传',
                    status: "process",
                  })
                  setTimeout(() => {
                    addon.upload()
                    dispatch({
                      type: "upload",
                      title: '上传',
                      status: "finish",
                    })
                    setTimeout(() => {
                      dispatch({
                        type: "visible",
                        title: 'false',
                      })
                    })
                  })
                }, 1000)
              }, 1000)
            }}
          >
            打包&上传
          </Button>,
          <Dropdown key="more" overlay={this.menu}>
            <Button
              style={{
                border: 'none',
                padding: 0,
              }}
            >
              <EllipsisOutlined
                style={{
                  fontSize: 20,
                  verticalAlign: 'top',
                }}
              />
            </Button>
          </Dropdown>,
        ]}
        style={{ margin: 0 }}
      >
        <Descriptions size="middle">
          <Descriptions.Item label="解压路径：">
            {this.getPath()}
          </Descriptions.Item>
        </Descriptions>
        <StepsView></StepsView>
      </PageHeader>
    ) : (
      <div></div>
    );
  }

  render() {
    return this.renderHeader();
  }
}

Index.propTypes = {
  dispatch: PropTypes.func.isRequired,
};

function stateToProps(state) {
  const { dataSkin, dataProperty, dataTemplateSkinId } = state;
  return { dataSkin, dataProperty, dataTemplateSkinId };
}

export default connect(stateToProps)(Index);
