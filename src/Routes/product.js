const cors = require("cors");

const express = require("express");

const productController = require("../Controllers/product");

const Router = express.Router();

Router.get("/", productController.getProducts);
Router.get("/sort", productController.sortProduk);
Router.get("/search", productController.searchProduct);
Router.post("/", productController.postProduct);
// Router.post("/add/:id", productController.addQuantity);

Router.put("/:id_product", productController.updateProduct);
Router.delete("/:id", productController.deleteProduct);

Router.post("/transaction", productController.orderProduct);
Router.get("/transaction", productController.getTransaction);

module.exports = Router;
