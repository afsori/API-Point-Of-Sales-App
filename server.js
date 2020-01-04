const cors = require("cors");

require("dotenv/config");
const express = require("express");
const logger = require("morgan");
const bodyParser = require("body-parser");
const Router = require("./src/Routes/index");
const server = express();
const port = process.env.PORT;
const nodeEnv = "Development";
// ||'8080'
server.use(cors());

server.listen(port, () => {
  console.log(`Server is running in port ${port} in ${nodeEnv} Mode`);
});
server.use(logger("dev"));
server.use(bodyParser.json());
server.use(bodyParser.urlencoded({ extended: false }));
server.use("/", Router);

module.exports = server;
