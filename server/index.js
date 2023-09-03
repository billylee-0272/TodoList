const express = require('express');
const app = express();
const cors = require('cors');
const pool = require('./db');
const todoRoutes = require('./routes/todoRoutes');

//middleware
app.use(cors());
app.use(express.json()); //req.body

//ROUTES//
app.use('/todos', todoRoutes);

app.listen(5000, () => {
  console.log('server has started');
});
