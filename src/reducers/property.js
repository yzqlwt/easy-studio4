import { PROPERTY, DEFAULT_MANAGE_PREFIX } from '../constants/fetchType';
import readyState from '../constants/readyState';

let initState = {
  readyState: readyState.INITIALIZE,
  response: {},
  error: '',
};

export const dataProperty = function (state = initState, action = {}) {
  let MANAGE_PREFIX = DEFAULT_MANAGE_PREFIX;
  switch (action.type) {
    case PROPERTY[MANAGE_PREFIX]:
      return Object.assign({}, state, {
        readyState: readyState.LOADING,
      });
    case PROPERTY[`${MANAGE_PREFIX}_SUCCESS`]:
      return Object.assign({}, state, {
        readyState: readyState.SUCCESS,
        response: action.response,
      });
    case PROPERTY[`${MANAGE_PREFIX}_FAIL`]:
      return Object.assign({}, state, {
        readyState: readyState.FAIL,
        error: action.error,
      });
    default:
      return state;
  }
};
