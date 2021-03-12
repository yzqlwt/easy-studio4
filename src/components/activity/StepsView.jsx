import React from 'react';
import { Drawer, Steps, Radio, Space } from 'antd';
import {
  UserOutlined,
  SolutionOutlined,
  LoadingOutlined,
  SmileOutlined,
} from '@ant-design/icons';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import { send } from '../../middleware/websocket';
import { get, last, find, indexOf, map } from 'lodash';

const { Step } = Steps;

class StepsView extends React.Component {
  state = {
    visible: false,
  };

  showDrawer = () => {
    this.setState({
      visible: true,
    });
  };

  render() {
    const { dataSteps } = this.props;
    const { tinyData, packageData, uploadData, visible } = dataSteps;
    return (
      <Drawer
        title="Wait a minute"
        placement="bottom"
        closable={false}
        visible={visible}
        key="Drawer"
      >
        <Steps>
          <Step status={tinyData.status } title={tinyData.title}  />
          <Step status={packageData.status} title={packageData.title}  />
          <Step status={uploadData.status} title={uploadData.title}  />
        </Steps>
      </Drawer>
    );
  }
}



StepsView.propTypes = {
  dispatch: PropTypes.func.isRequired,
  templateId: PropTypes.number.isRequired,
  skinId: PropTypes.number.isRequired,
};

function stateToProps(state) {
  const { dataSteps } = state;
  return { dataSteps };
}

export default connect(stateToProps)(StepsView);
