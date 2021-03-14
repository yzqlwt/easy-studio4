import { PROPERTY, DEFAULT_MANAGE_PREFIX } from '../constants/fetchType';
import readyState from '../constants/readyState';
import { getAddonPath } from '../common/global';
import { find } from 'lodash';
const addon = window.require(getAddonPath());

let initState = {
  readyState: readyState.INITIALIZE,
  response: {},
  error: '',
};

export const dataProperty = function (state = initState, action = {}) {
  let MANAGE_PREFIX = DEFAULT_MANAGE_PREFIX;
  switch (action.type) {
    case PROPERTY[MANAGE_PREFIX]:
      addon.setSkinPath("");
      return Object.assign({}, state, {
        readyState: readyState.LOADING,
      });
    case PROPERTY[`${MANAGE_PREFIX}_SUCCESS`]:
      const property = find(action.response || [], (elem) => elem.name == 'path') || {};
      addon.setSkinPath(property.content || "")
      return Object.assign({}, state, {
        readyState: readyState.SUCCESS,
        response: action.response,
      });
    case PROPERTY[`${MANAGE_PREFIX}_FAIL`]:
      addon.setSkinPath("");
      return Object.assign({}, state, {
        readyState: readyState.FAIL,
        error: action.error,
      });
    default:
      return state;
  }
};
