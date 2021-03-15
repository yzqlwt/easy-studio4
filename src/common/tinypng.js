import fs from 'fs';
import request from './http';
import { getImageCachePath } from './global';
import crypto from 'crypto'
const { join } = window.require('path');

function getOptions() {
  //生成请求头部
  var time = Date.now();
  let UserAgent =
    'Mozilla/5.0(WindowsNT10.0;Win64;x64)AppleWebKit/537.36(KHTML,likeGecko)Chrome/' +
    59 +
    Math.round(Math.random() * 10) +
    '.0.3497.' +
    Math.round(Math.random() * 100) +
    'Safari/537.36';
  var options = {
    method: 'POST',
    hostname: 'tinypng.com',
    path: '/web/shrink',
    headers: {
      rejectUnauthorized: false,
      'Postman-Token': (time -= 5000),
      'Cache-Control': 'no-cache',
      'Content-Type': 'application/x-www-form-urlencoded',
      'User-Agent': UserAgent,
      'X-Forwarded-For': getIp(),
      Cookie: '',
    },
    timeout: 5000,
  };
  return options;
}
function getIp() {
  var _ = {
    random: function (start, end) {
      return parseInt(Math.random() * (end - start) + start);
    },
  };
  var ip =
    _.random(1, 254) +
    '.' +
    _.random(1, 254) +
    '.' +
    _.random(1, 254) +
    '.' +
    _.random(1, 254);
  return ip;
}

export const tiny = function (path) {
  const imageData = fs.readFileSync(path);
  if (!imageData) {
    return path;
  }
  const cachePath = getImageCachePath();
  const hash = crypto.createHash('md5');
  hash.update(imageData, 'utf8');
  const md5 = hash.digest('hex');
  const savePath = join(cachePath, md5+".png");
  if (fs.existsSync(savePath)){
    return Promise.resolve(path);
  }else{
    return request(getOptions(), imageData, savePath);
  }
}

export const tinyAll = (paths)=>{
  paths.reduce(async (previousValue, currentValue) => {
    await previousValue
    return tiny(currentValue)
  }, Promise.resolve())
}



