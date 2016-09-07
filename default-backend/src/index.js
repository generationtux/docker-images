var express = require('express');
var app = express();

// config
app.set('views', __dirname + '/views');
app.set('view engine', 'hbs');

// Health endpoint should always return healthy
app.get('/healthz', function(req, res) {
    res.send('ok');
});

// Respond with appropriate error message
app.get('/*', function(req, res) {
    var code = req.get('x-code') || 404;
    res.status(code);
    var message = (code == 404)
        ? "Unable to find the service you're looking for."
        : "Looks like something went wrong, please check back soon.";

    var format = req.get('x-format') || 'html';
    if (format == 'json') {
        res.setHeader('Content-Type', 'application/json');
        res.send(JSON.stringify({ message: message }));
    } else {
        res.render('template', {message: message});
    }
});

// Start app
var port = process.env.NODE_PORT || 3000;
app.listen(port);
console.log('App is running on port ' + port);
