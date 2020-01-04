const productModel = require("../Models/product");
const form = require("../Helpers/form");

module.exports = {
  //Get Product

  sortProduk: (req, res) => {
    const sortby = req.query.sortby;
    productModel
      .sortProduk(sortby)
      .then(response => form.sortProduk1(res, response, 200))
      .catch(err => console.log(err));
  },

  getProducts: (req, res) => {
    //Pagination
    let page = parseInt(req.query.page) || 1;
    let perpage = parseInt(req.query.perpage) || 10;
    let currentpage = page;
    page = (page - 1) * perpage;
    productModel
      .getProduct(page, perpage)
      .then(response => {
        return productModel
          .getCount()
          .then(count => {
            let total = Math.ceil(count[0].total / perpage);
            form.formgetProduct(
              res,
              200,
              response,
              currentpage,
              perpage,
              total
            );
          })
          .catch(error => {
            res.json(error);
          });
      })
      .catch(error => {
        res.json(error);
      });
  },

  getTransaction: (req, res) => {
    //Pagination
    let page = parseInt(req.query.page) || 1;
    let perpage = parseInt(req.query.perpage) || 10;
    let currentpage = page;
    page = (page - 1) * perpage;
    productModel
      .getTransaction(page, perpage)
      .then(response => {
        return productModel
          .getCount()
          .then(count => {
            form.getTransaction(res, 200, response);
          })
          .catch(error => {
            res.json(error);
          });
      })
      .catch(error => {
        res.json(error);
      });
  },

  //Insert Product
  postProduct: (req, res) => {
    productModel
      .postProduct(req)
      .then(response => {
        form.successResponse(res, 200, "Succes Input");
      })
      .catch(err => {
        res.json(err);
      });
  },

  updateProduct: (req, res) => {
    productModel
      .updateProduct(req)
      .then(response => {
        form.successResponse(res, 200, "Succes Update");
      })
      .catch(err => {
        res.json(error);
      });
  },

  deleteProduct: (req, res) => {
    productModel
      .deleteProduct(req.params.id)
      .then(response => {
        form.successResponse(res, 200, "Succes Delete");
      })
      .catch(err => {
        res.json(error);
      });
  },

  sortProduct: (req, res) => {
    productModel
      .sortProduct(req)
      .then(response => {
        form.formgetProduct(res, 200, response);
      })
      .catch(error => {
        res.json(error);
      });
  },

  searchProduct: (req, res) => {
    productModel
      .searchProduct(req)
      .then(response => {
        console.log(response);
        if (response == "") {
          form.failedResponse(res, 400, "product does not exist");
        } else {
          form.formgetProduct(res, 200, response);
        }
      })
      .catch(error => {
        res.json(error);
      });
  },

  addQuantity: (req, res) => {
    qty = req.body.quantity;
    if (qty < 0) {
      form.failedResponse(res, 400, "Cannot Add Quantity With Value Below 0");
    } else {
      productModel
        .addProduct(req)
        .then(response => {
          form.successResponse(res, 200, "Succes Add Quantity");
        })
        .catch(error => {
          res.json(error);
        });
    }
  },

  // orderProduct: (req, res) => {
  //   productModel
  //     .orderProduct(req)
  //     .then(response => {
  //       form.successResponse(res, 200, "Succes Update");
  //     })
  //     .catch(error => {
  //       res.json(error);
  //     });
  // },
  orderProduct: (req, res) => {
    const date = new Date();
    const body = {
      ...req.body,
      date_added: date
    };
    productModel
      .orderProduct(req, body)
      .then(response => {
        form.successResponse(res, 200, "Succes Input");
      })
      .catch(err => {
        res.json(err);
      });
  },

  getByIdProduct: (req, res) => {
    productModel
      .getByIdProduct(req)
      .then(response => {
        if (response == "") {
          form.failedResponse(res, 400, "product does not exist");
        } else {
          form.formgetProduct(res, 200, response);
        }
      })
      .catch(error => {
        res.json(error);
      });
  }
};
