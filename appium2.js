const { spawn } = require('child_process');
const appium2 = spawn('npx', ['appium', ...process.argv.slice(2)]);

appium2.stdout.setEncoding('utf8');
appium2.stdout.on('data', function (data) {
  console.log(data.trim());
  data = data.trim().toString();
});

appium2.stderr.setEncoding('utf8');
appium2.stderr.on('data', function (data) {
  console.log(data.trim());
  data = data.trim().toString();
});

appium2.on('close', function (code) {
  console.log('closing code: ' + code);
});
