const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors');
const helmet = require('helmet');

// defining the Express app
const app = express();

// adding Helmet to enhance your API's security
app.use(helmet());

// using bodyParser to parse JSON bodies into JS objects
app.use(bodyParser.json());

// enabling CORS for all requests
app.use(cors());

// defining an endpoint to return all ads
app.get('/', (req, res) => {
  // serve the entry point html
  res.send(ads);
});

app.post('/api/sign_in', (req, res) => {
  res.send({ payload: ["testingjwttoken"] })
});
app.post('/api/sign_up', (req, res) => {
  res.send({ payload: ["testingjwttoken"] })
});

// returns an array of students
app.get('/api/admin/students', (req, res) => {
  res.send({ payload: [] })
});

app.get('/api/admin/students/:id', (req, res) => {
  // req.params.id
  res.send({ payload: [] })
});

app.get('/api/admin/mentors', (req, res) => {
  res.send({ payload: [] })
});

app.get('/api/admin/mentors/:id', (req, res) => {
  res.send({ payload: [] })
});

app.get('/api/mentor/students', (req, res) => {
  res.send({ payload: [] })
});

app.get('/api/mentor/students/:id', (req, res) => {
  res.send({ payload: [] })
});

// starting the server
app.listen(3001, () => {
  console.log('listening on port 3001');
});
