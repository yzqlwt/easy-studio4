const chokidar = window.require('chokidar');

export const addWatcher = function (dir) {
  let watcher = chokidar.watch(dir, {
    persistent: true,
    ignored: /(^|[\/\\])\../, // 忽略点文件
    cwd: '.', // 表示当前目录
    depth: 0, // 只监听当前目录不包括子目录
  });
  watcher.on('all', (event, path) => {
    console.log(event, path);
  });
  return watcher;
};
