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

// ROUTE POTION

app.get('/potions', (req, res) => {
  connection.query("SELECT * from potion", (err, results) => {
    if (err) {
      res.status(500).send("Error retrieving data");
    } else {
      res.status(200).json(results);
    }
  });
})

app.post('/potions', (req, res) => {
  const { nom, effet, image, duration, age_min, prix, age_max, categorie } = req.body;
  connection.query(
    "INSERT INTO potion set ?",
    req.body,
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

app.delete("/potions/:id", (req, res) => {
  const idPotion = req.params.id;
  connection.query(
    "DELETE FROM potion WHERE id = ?",
    [idPotion],
    (err, results) => {
      if (err) {
        console.log(err);
        res.status(500).send("Error deleting an potion");
      } else {
        res.status(200).send("Potion deleted!");

      }
    }
  );
});

// ROUTE PANIER

app.get('/panier', (req, res) => {
  connection.query("SELECT * from panier", (err, results) => {
    if (err) {
      res.status(500).send("Error retrieving data");
    } else {
      res.status(200).json(results);
    }
  });
})

app.post('/panier', (req, res) => {
  const { nom, effet, image, duration, age_min, prix, age_max, categorie } = req.body;
  connection.query(
    "INSERT INTO panier set ?",
    req.body,
    (err, results) => {
          if (err) {
            console.log(err);
            res.status(500).send("Error saving a panier");
          } else {
            res.status(200).send("Successfully saved");
          }
        }
    ); 
});

app.delete("/panier/:id", (req, res) => {
  const idPotion = req.params.id;
  connection.query(
    "DELETE FROM panier WHERE id = ?",
    [idPotion],
    (err, results) => {
      if (err) {
        console.log(err);
        res.status(500).send("Error deleting an panier");
      } else {
        res.status(200).send("Potion panier deleted!");

      }
    }
  );
});

app.listen(port, () => {
    console.log(`server is listening on ${port}`);
});
