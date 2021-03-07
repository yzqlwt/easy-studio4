export const dataTemplateSkinId = function (state = {}, action = {}) {
  switch (action.type){
    case "template-skin-id":
      return Object.assign({}, state, {
        templateId: action.templateId,
        skinId: action.skinId,
      });
    default:
      return state;
  }
};
