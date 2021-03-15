const https = window.require('https');
const fs = window.require('fs');

function downloadFile(url, dest){
  return new Promise((resolve, reject) => {
    let options = new URL(url);
    let req = https.request(options, (res) => {
      let body = "";
      res.setEncoding("binary");
      res.on("data", function (data) {
        body += data;
      });
      res.on("end", function () {
        return new Promise((resolve, reject) => {
          fs.writeFile(dest, body, "binary", (err) => {
            if (err) {
              reject(err);
              return;
            }
            resolve(true);
          });
        });
      });
    });
    req.on("error", (e) => {
      reject(e);
    });
    req.end();
  });
}

export default ((urlOptions, data, savePath) => {
  return new Promise((resolve, reject) => {
    const req = https.request(urlOptions,
      (res) => {
        res.on('data', buf => {
          let obj = JSON.parse(buf.toString());
          if (obj.error) {
            console.log(`压缩失败！报错：${obj.message}`);
            reject();
          } else {
            console.log(obj, savePath)
            let stream = fs.createWriteStream(savePath);
            const request = https.get(obj.output.url, function(response) {
              response.pipe(stream);
              stream.on('finish', function() {
                stream.close();  // close() is async, call cb after close completes.
                resolve(obj.output.url);
              });
            });
          }
        });
      });
    req.on('error', reject);
    req.write(data, 'binary');
    req.end();
  });
})
