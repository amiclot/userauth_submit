var express = require("express");
var bodyParser = require("body-parser");

var port = 8080;

var app = express();

// Serve static content for the app from the "public" directory in the application directory.
app.use(express.static("public"));

app.use(bodyParser.urlencoded({ extended: false }));

// Set Handlebars.
var exphbs = require("express-handlebars");

app.engine("handlebars", exphbs({ defaultLayout: "main" }));
app.set("view engine", "handlebars");

// Import routes
var routes = require("./controllers/catsController.js");
// and give the server access to them.
app.use("/", routes);
//connects to port
app.listen(port);
//verify
console.log('Magic happens on port ' + port);