const initState = {
  tinyData:{
    status: "wait",
    title: "compress",
  },
  packageData:{
    status: "wait",
    title: "compress",
  },
  uploadData:{
    status: "wait",
    title: "compress",
  },
  visible:false
}
export const dataSteps = function (state = initState, action = {}) {
  switch (action.type){
    case "tiny":
      return Object.assign({}, state, {
        ["tinyData"]: Object.assign({}, state["tiny"], {
          status: action.status,
          title: action.title,
        })});
    case "package":
      return Object.assign({}, state, {
        ["packageData"]: Object.assign({}, state["tiny"], {
          status: action.status,
          title: action.title,
        })});
    case "upload":
      return Object.assign({}, state, {
        ["uploadData"]: Object.assign({}, state["tiny"], {
          status: action.status,
          title: action.title,
        })});
    case "visible":
      const visible = action.title == "true";
      return Object.assign({}, state, {
        ["visible"]: visible,
        ["uploadData"]: Object.assign({}, state["tiny"], initState.uploadData),
        ["packageData"]: Object.assign({}, state["tiny"], initState.uploadData),
        ["tinyData"]: Object.assign({}, state["tiny"], initState.uploadData)})
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

