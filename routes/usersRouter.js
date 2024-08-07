const express = require("express");
const userController = require("../controllers/userControllers");

const Router = express.Router();

Router.post(
  "/signup",
  userController.ValidateSignUpData,
  userController.SignUp
);
Router.post("/login", userController.ValidateLogInData, userController.LogIn);

// User Routes
Router.get('/user/:userid', (req, res) => {
  // Logic to return the requested user
  res.send('Return the requested user');
});

Router.post('/user', (req, res) => {
  // Logic to create a new user
  res.send('Create user');
});

Router.put('/user/:userid', (req, res) => {
  // Logic to update the specified user
  res.send('Update user');
});

Router.delete('/user/:userid', (req, res) => {
  // Logic to delete the specified user
  res.send('Delete user');
});

Router.post('/user/search', (req, res) => {
  // Logic to search users
  res.send('Search users');
});

module.exports = Router;
