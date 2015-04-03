var express = require('express');
var path = require('path');
var favicon = require('serve-favicon');
var logger = require('morgan');
var cookieParser = require('cookie-parser');
var bodyParser = require('body-parser');

var routes = require('./routes/index');
var users = require('./routes/users');

var app = express();

// view engine setup
app.set('views', path.join(__dirname, 'views'));
app.set('view engine', 'jade');

// uncomment after placing your favicon in /public
//app.use(favicon(__dirname + '/public/favicon.ico'));
app.use(logger('dev'));
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(cookieParser());
app.use(express.static(path.join(__dirname, 'public')));

//app.use('/', routes);
app.use('/users', users);

//catch week
app.use('/index', function(req, res) {
     res.render('index',{
		weekid:'http://xmlcourse.herokuapp.com/first/',
		week:'一',
		weekintro:"xml课程简介"
	 }
	 );
});
//test xsl
app.use('/animationtest', function(req, res) {
     res.sendfile("./views/animation/Animation.xml");
});
app.use('/Animation.xsl', function(req, res) {
     res.sendfile("./views/animation/Animation.xsl");
});

app.use('/second', function(req, res) {
  res.render('index',{
		weekid:'http://xmlcourse.herokuapp.com/second/',
		week:'二',
		weekintro:"dtd+schema+xml，提交时间3/20 晚8点前",
		weekurl:"http://kuai.xunlei.com/s/-hzBZnJ0oEDjdpJDBtRCwA#"
	 }
	 );
});
app.use('/third', function(req, res) {
   res.render('index',{
		weekid:'http://xmlcourse.herokuapp.com/third/',
		week:'三',
		weekintro:"暂无"
	 }
	 );
});


// catch group
app.use('/music', function(req, res) {
   res.render('group_index',{
		groupname:"音乐"
	 }
	 );
});
app.use('/tv', function(req, res) {
   res.render('group_index',{
		groupname:"电视"
	 }
	 );
});
app.use('/animation', function(req, res) {
   res.render('group_index',{
		groupname:"动漫"
	 }
	 );
});
app.use('/movie', function(req, res) {
   res.render('group_index',{
		groupname:"电影"
	 }
	 );
});



// catch 404 and forward to error handler
app.use(function(req, res, next) {
  var err = new Error('Not Found');
  err.status = 404;
  next(err);
});

// error handlers

// development error handler
// will print stacktrace
if (app.get('env') === 'development') {
  app.use(function(err, req, res, next) {
    res.status(err.status || 500);
    res.render('error', {
      message: err.message,
      error: err
    });
  });
}

// production error handler
// no stacktraces leaked to user
app.use(function(err, req, res, next) {
  res.status(err.status || 500);
  res.render('error', {
    message: err.message,
    error: {}
  });
});

module.exports = app;
