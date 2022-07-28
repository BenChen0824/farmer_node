require("dotenv").config();
const express = require("express");

const db = require(__dirname + "/modules/mysql-connect");

const cors = require("cors");

const app = express();
const corsOptions = {
    credentials: true,
    origin: (origin, cb) => {
      console.log({ origin });
      cb(null, true);
    }
  }; 

app.use(cors(corsOptions));

app.use(express.urlencoded({ extends: false }));
app.use(express.json());



app.use("/product", require(__dirname + "/routes/product"));



app.use(express.static("public"));

app.listen(process.env.PORT, () => {
    console.log(`server started: ${process.env.PORT}`);
    console.log({ NODE_ENV: process.env.NODE_ENV });
  });