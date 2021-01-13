const express = require('express')
const mysql = require('./db')
const { SERVER_PORT } = require('./env')

const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: true }))

require('./routes')(app)

app.get('/', (req, res) => {
    res.status(200).json('stay a while listen...');
});

app.listen(SERVER_PORT, () => {
    console.log(`server is listening on ${SERVER_PORT}`);
});
