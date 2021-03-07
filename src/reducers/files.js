export const dataFiles = function (state = {}, action = {}) {
  switch (action.type){
    case "folder":
      return Object.assign({}, state, {
        folder: action.folder
      });
    case "imagesPath":
      return Object.assign({}, state, {
        imagesPath: action.path
      });
    case "othersPath":
      return Object.assign({}, state, {
        othersPath: action.path
      });
    default:
        return state;
  }
};

export const curViewPath = function(state = {}, action={}){
  switch (action.type){
    case "curViewPath":
      return Object.assign({}, state, {
        skinPath: action.skinPath,
        assetsPath: action.assetsPath,
      });
    default:
      return state;
  }
}

