import React from 'react';
import { Drawer, Steps } from 'antd';
import PropTypes from 'prop-types';
import { connect } from 'react-redux';
import { UserOutlined, SolutionOutlined, LoadingOutlined, SmileOutlined } from '@ant-design/icons';
import { map } from 'lodash';

const { Step } = Steps;

class StepsView extends React.Component {
  state = {
    visible: false
  };

  showDrawer = () => {
    this.setState({
      visible: true
    });
  };

  render() {
    const { dataProcess } = this.props;
    const { visible } = dataProcess;

    return (
      <Drawer
        title="Wait a minute"
        placement="bottom"
        closable={false}
        visible={visible}
        key="Drawer"
      >
        <Steps>
          {map(dataProcess, (data, name) => {
            if (data.title) {
              return (<Step status={data.status} title={data.title} key={name} icon={data.status == "process" && <LoadingOutlined />}/>);
            }
          })}
        </Steps>
      </Drawer>
    );
  }
}


StepsView.propTypes = {
  dispatch: PropTypes.func.isRequired
};

function stateToProps(state) {
  const { dataProcess } = state;
  return { dataProcess };
}

export default connect(stateToProps)(StepsView);
