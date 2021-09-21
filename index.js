const express = require("express");
const app = express();
 
app.listen(3000, function () {
  console.log("listening on 3000");
});
 
app.get("/", (req, res) => {
  res.send({"data":"Users Shown"});
});
 
app.get("/delete", (req, res) => {
  res.send("Delete all users from database");
});
 
app.get("/update", (req, res) => {
  res.send("Update User from database");
});
 
app.get("/insert", (req, res) => {
  res.send("Insert User");
});
