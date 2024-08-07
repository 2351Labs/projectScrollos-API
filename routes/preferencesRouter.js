const express = require("express");
//const userController = require("../controllers/documentControllers");

const Router = express.Router();

// Preferences Routes
Router.get('/preferences/user/:userid', (req, res) => {
    // Logic to return the requested user's preferences
    res.send('Return the requested users preferences');
});

Router.get('/preferences/user/:userid/:preferenceid', (req, res) => {
    // Logic to return the requested user's individual preference
    res.send('Return the requested users individual preference');
});

Router.post('/preferences/user/:userid', (req, res) => {
    // Logic to create one or more user preferences
    res.send('Create one or more user preferences');
});

Router.put('/preferences/user/:userid', (req, res) => {
    // Logic to update one or more user preferences
    res.send('Update one or more user preferences');
});

Router.delete('/preferences/user/:userid', (req, res) => {
    // Logic to delete one or more user preferences
    res.send('Delete one or more user preferences');
});

module.exports = Router;