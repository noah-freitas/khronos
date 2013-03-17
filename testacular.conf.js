// Testacular configuration

// base path, that will be used to resolve files and exclude
basePath = '';

// list of files / patterns to load in the browser
files = [
  JASMINE,
  JASMINE_ADAPTER,
  'app/components/angular/angular.js',
  'app/components/angular-mocks/angular-mocks.js',
  '.tmp/scripts/**/*.js',
  '.tmp/spec/**/*.js'
];

// list of files to exclude
exclude = [];

// test results reporter to use
// possible values: dots || progress
reporter = 'progress';

// enable / disable colors in the output (reporters and logs)
colors = true;

// level of logging
// possible values: LOG_DISABLE || LOG_ERROR || LOG_WARN || LOG_INFO || LOG_DEBUG
logLevel = LOG_INFO;

// enable / disable watching file and executing tests whenever any file changes
autoWatch = false;

// Start these browsers, currently available:
// - Chrome
// - ChromeCanary
// - Firefox
// - Opera
// - Safari
// - PhantomJS
browsers = process.env.IP !== undefined ? [] : ['PhantomJS'];
hostname = process.env.IP || 'localhost';
port = process.env.PORT || 8080;
runnerPort = process.env.IP !== undefined ? 0 : 9100;

// Continuous Integration mode
// if true, it capture browsers, run tests and exit
singleRun = false;
