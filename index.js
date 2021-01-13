const express = require('express')
const cors = require('cors')
const connection = require("./config");

const port = 5000;
const app = express();
app.use(cors())

connection.connect(function (err) {
  if (err) {
    console.error('error connecting: ' + err.stack);
    return;
  }
  
  console.log('connected as id ' + connection.threadId);
});

app.use(express.json())

app.get('/', (req, res) => {
    res.status(200).json('stay a while listen...');
});

app.listen(port, () => {
    console.log(`server is listening on ${port}`);
});
