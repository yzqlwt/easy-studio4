
export const dataProcess = function(state = {}, action = {}){
  switch (action.type){
    case "process":
      return Object.assign({}, action.data);
    default:
      return state;
  }
}

export const dataPaths = function(state = {}, action={}){
  switch (action.type){
    case "dataPaths":
      return Object.assign({}, state, {
        skinPath: action.skinPath,
        assetsPath: action.assetsPath,
        outputPath: action.outputPath,
      });
    default:
      return state;
  }
}

