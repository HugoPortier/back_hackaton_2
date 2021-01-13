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

app.get('/potion', (req, res) => {
  connection.query("SELECT * from potion", (err, results) => {
    if (err) {
      res.status(500).send("Error retrieving data");
    } else {
      res.status(200).json(results);
    }
  });
})

app.post("/potion", (req, res) => {
  console.log(req.body)
  const { nom, effet, image, duration, age_min, age_max, categorie } = req.body;
  connection.query(
    "INSERT INTO potion(nom, effet, image, duration, age_min, age_max, categorie) VALUES(?, ?, ?, ?, ?, ?, ?)",
    [nom, effet, image, duration, age_min, age_max, categorie],
    (err, results) => {
          if (err) {
            console.log(err);
            res.status(500).send("Error saving a potion");
          } else {
            res.status(200).send("Successfully saved");
          }
        }
    ); 
});

app.get('/', (req, res) => {
    res.status(200).json('stay a while listen...');
});

app.get('/potion', (req, res) => {
  res.status(200).json('stay a while listen...');
});

app.listen(port, () => {
    console.log(`server is listening on ${port}`);
});
