import React from 'react';
import {
  Menu,
  Spin,
  Pagination,
  Tooltip
} from 'antd';
import { get, last } from 'lodash';
import ReactCustomScrollBars from 'react-custom-scrollbars';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import Toolbar from './Toolbar';
import { fetchActivity } from '../../actions/activity';
import { fetchSkin } from '../../actions/skin';
import {
  isFetchLoading,
  startToPage,
  pageToStart,
  getAbsoluteStaticUrl
} from '../../common/library';
import './index.scss';


class Index extends React.Component {
  state = {
    params: {
      count: 12
    }
  };

  fetchActivity = () => {
    const { dispatch } = this.props;
    dispatch(fetchActivity(this.state.params));
  };

  fetchSkins = (templateId) => {
    const { dispatch } = this.props;
    dispatch(
      fetchSkin({
        templateId: templateId,
        templateType: 'ActivityTemplate'
      })
    );
  };

  handlePageChange = (page) => {
    const { params } = this.state;
    const { dispatch } = this.props;
    params.start = pageToStart(page, params.count);
    this.setState({
      params
    });
    dispatch({
      type: 'template-skin-id',
      templateId: null,
      skinId: null
    });
    this.fetchActivity();
  };

  handleSearch = (searchFields) => {
    const { params } = this.state;
    searchFields.start = 0;
    this.setState({
      params: { ...params, ...searchFields }
    });
    this.fetchActivity();
  };

  onOpenChange = (keys) => {
    const { dispatch } = this.props;
    const lastKey = last(keys);
    let templateId = parseInt(lastKey);
    templateId = isNaN(templateId) ? null : templateId;
    if (templateId) {
      dispatch({
        type: 'template-skin-id',
        templateId: templateId,
        skinId: null
      });
      this.fetchSkins(templateId);
    } else {
      dispatch({
        type: 'template-skin-id',
        templateId: null,
        skinId: null
      });
    }
  };

  handleClick = (e) => {
    const { dispatch, dataTemplateSkinId } = this.props;
    let skinId = parseInt(e.key);
    skinId = isNaN(skinId) ? null : skinId;
    dispatch({
      type: 'template-skin-id',
      templateId: dataTemplateSkinId.templateId,
      skinId: skinId
    });
  };

  componentDidMount() {
    this.fetchActivity();
  }

  getSkinsData(templateId) {
    const { dataSkin } = this.props;
    const templateType = 'ActivityTemplate';
    const targetSkin = get(dataSkin, templateType + '_' + templateId);
    if (targetSkin) {
      return get(targetSkin, 'response', []);
    }
    return [];
  }

  renderTemplates() {
    const { dataActivity } = this.props;
    const list = get(dataActivity, 'response.targets', []);
    const { dataTemplateSkinId } = this.props;
    const { templateId, skinId } = dataTemplateSkinId;
    return (
      <Menu
        mode="inline"
        selectedKeys={[String(skinId)]}
        openKeys={[String(templateId)]}
        onOpenChange={(keys) => {
          this.onOpenChange(keys);
        }}
      >
        {list.map((tpl) => (
          <Menu.SubMenu key={String(tpl.id)} title={tpl.name}>
            <Menu.ItemGroup title="皮肤列表">
              {this.getSkinsData(tpl.id).map((skin) => [
                <Menu.Item
                  key={skin.id}
                  style={{ height: 80 }}
                  onClick={this.handleClick}
                >
                  <Tooltip title={skin.name} color="blue" placement="right">
                    <img
                      src={getAbsoluteStaticUrl(skin.preview.uri)}
                      alt="preview"
                      width={200}
                    />
                  </Tooltip>
                </Menu.Item>,
                <Menu.Divider></Menu.Divider>
              ])}
            </Menu.ItemGroup>
          </Menu.SubMenu>
        ))}
      </Menu>
    );
  }

  render() {
    const { dataActivity } = this.props;
    const { response } = dataActivity;
    return (
      <div className="left">
        <ReactCustomScrollBars
          autoHide
          autoHideTimeout={600}
          autoHideDuration={400}
        >
          <Toolbar onSearch={this.handleSearch} />
          <Spin spinning={isFetchLoading(dataActivity)} tip="Loading...">
            {this.renderTemplates()}
          </Spin>
          <Pagination
            current={startToPage(response.start, response.count) || 1}
            total={response.total || 0}
            onChange={this.handlePageChange}
            simple
          />
        </ReactCustomScrollBars>
      </div>
    );
  }
}

Index.propTypes = {
  dispatch: PropTypes.func.isRequired
};

function stateToProps(state) {
  const { dataSkin, dataProperty, dataActivity, dataTemplateSkinId } = state;
  return { dataSkin, dataProperty, dataActivity, dataTemplateSkinId };
}

export default connect(stateToProps)(Index);
