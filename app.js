const express = require('express');
const app = express();
const mongoose = require('mongoose');
const routes = require('./routes/route');

const dbURI = 'mongodb+srv://test:WVcxSuGZsyD7SZ8K@cluster0.mxgtd.gcp.mongodb.net/responses?retryWrites=true&w=majority';

mongoose.connect(dbURI, { useNewUrlParser: true, useUnifiedTopology: true, useCreateIndex:true }, () => {
    console.log('Connected to database')
});

app.listen(4000, () => {
    console.log('Listening to port 4000')
});

//use Routes
app.use('/', routes);