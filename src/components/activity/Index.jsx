import React from 'react';
import {
  Layout
} from 'antd';
import PropTypes from 'prop-types';
import { withRouter } from 'react-router-dom';
import { connect } from 'react-redux';
import FileView from './fileview/Index';
import Templates from './Templates';
import Header from './Header';
import './index.scss';

class Index extends React.Component {

  render() {
    return (
      <Layout className="left">
        <Layout.Sider
          theme="light"
          width={320}
          className="sider"
        >
          <Templates></Templates>
        </Layout.Sider>
        <Layout className="content">
          <Layout.Header className="header">
            <Header></Header>
          </Layout.Header>
          <Layout.Content style={{width:"100%"}}>
            <FileView></FileView>
          </Layout.Content>
        </Layout>
      </Layout>
    );
  }
}

Index.propTypes = {
  dispatch: PropTypes.func.isRequired,
};

function stateToProps(state) {
  return {};
}

export default withRouter(connect(stateToProps)(Index));

