"use strict";

var express = require("express");

var app = express();
app.listen(3000, function () {
  console.log("listening on 3000");
});
app.get("/", function (req, res) {
  res.send({
    "data": "Users Shown"
  });
});
app.get("/delete", function (req, res) {
  res.send("Delete all users from database");
});
app.get("/update", function (req, res) {
  res.send("Update User from database");
});
app.get("/insert", function (req, res) {
  res.send("Insert User");
});