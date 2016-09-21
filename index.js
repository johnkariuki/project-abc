'use strict';

var express = require('express'),
  app = express();

app.get('/', function (req, res) {
  res.status(200)
    .send('Success is going from failure to failure without losing enthusiasm.');
});

app.get('/foo', function (req, res) {
  res.status(200)
    .send('bar');
});

app.get('/bar', function (req, res) {
  res.status(200)
    .send('foo');
});

app.set('port', process.env.PORT || 8080);

app.listen(app.get('port'), function () {
  console.log('Magic happens on port', app.get('port'));
});

module.exports.app = app;
