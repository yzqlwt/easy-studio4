import React from 'react';
import { Drawer, Steps } from 'antd';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import {
  UserOutlined,
  SolutionOutlined,
  LoadingOutlined,
  SmileOutlined,
} from '@ant-design/icons';
import { map } from 'lodash';

const { Step } = Steps;

class StepsView extends React.Component {
  render() {
    return (
      <Drawer
        title="Wait a minute"
        placement="bottom"
        closable={false}
        visible={this.props.visible}
        key="Drawer"
      >
        <Steps>
          {map(this.props.steps, (data, name) => {
            return (
              <Step
                status={data.status}
                title={data.title}
                description={data.description}
                key={name}
                icon={data.status == 'process' && <LoadingOutlined />}
              />
            );
          })}
        </Steps>
      </Drawer>
    );
  }
}

StepsView.propTypes = {
  dispatch: PropTypes.func.isRequired,
  visible: PropTypes.bool.isRequired,
  steps: PropTypes.object.isRequired,
};

function stateToProps(state) {
  const {} = state;
  return {};
}

export default connect(stateToProps)(StepsView);
