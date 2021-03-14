import chokidar from 'chokidar';

export const addWatcher = function (dir, callback) {
  let watcher = chokidar.watch(dir, {
    persistent: true,
    ignoreInitial:true,
    awaitWriteFinish: {
      stabilityThreshold: 2000,
      pollInterval: 100
    },
    ignored: /(^|[\/\\])\../, // 忽略点文件
    cwd: '.', // 表示当前目录
    depth: 0, // 只监听当前目录不包括子目录
  });
  watcher.on('all', callback);
  return watcher;
};
