import chokidar from 'chokidar';
import {getCachePath, getAddonPath} from './global'
const addon = window.require(getAddonPath());

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

export const watcherFla = function(){
  let watcher = chokidar.watch(getCachePath(), {
    persistent: true,
    ignoreInitial:true,
    ignored: /(^|[\/\\])\../, // 忽略点文件
    cwd: '.', // 表示当前目录
    depth: 0, // 只监听当前目录不包括子目录
  });
  watcher.on('add', (path)=>{
    if (path.indexOf("fla.txt")!=-1){
      console.log("生成csd", path)
      addon.generateCSD()
    }
  });
}
watcherFla();
