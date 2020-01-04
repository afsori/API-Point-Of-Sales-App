<h1 align="center">RESTful API for Point Of Sales App</h1>

# Overview

## Introduction

Point of Sale API is an API that allows users to access systems such as product items and product quantities. The Point of Sales API also makes it possible to create, update and delete products.

There are several features included in the API that make it possible to sort products to search for products by name, increase / decrease the number of products and make product orders from the database and reduce or increase quantity

## Built With

[![Node.js](https://img.shields.io/badge/Node.js-v.10.16.2-green.svg?style=flat-square&logo=appveyor)](https://nodejs.org/) [![Express.js](https://img.shields.io/badge/Express.js-4.x-orange.svg?style=flat-square&logo=appveyor)](https://expressjs.com/en/starter/installing.html) [![MySQL](https://img.shields.io/badge/mysql-v2.17.1-blue?style=flat-square&logo=appveyor)](https://www.npmjs.com/package/mysql) [![body-parser](https://img.shields.io/badge/body--parser-v1.19.0-red?style=flat-square&logo=appveyor)](https://www.npmjs.com/package/body-parser) [![morgan](https://img.shields.io/badge/morgan-v1.9.1-success?style=flat-square&logo=appveyor)](https://www.npmjs.com/package/body-parser) [![dotenv](https://img.shields.io/badge/dotenv-v1.9.1-black?style=flat-square&logo=appveyor)](https://www.npmjs.com/package/dotenv) [![cors](https://img.shields.io/badge/cors-v2.8.5-blueviolet?style=flat-square&logo=appveyor)](https://www.npmjs.com/package/cors) [![jsonwebtoken](https://img.shields.io/badge/jsonwebtoken-v8.5.1-blue?style=flat-square&logo=appveyor)](https://www.npmjs.com/package/jsonwebtoken)

## Requirements

1. <a href="https://nodejs.org/en/download/">Node Js</a>
2. <a href="https://expressjs.com/en/starter/installing.html">Express JS </a>
3. <a href="https://www.getpostman.com/">Postman</a>
4. Web Server (ex. localhost)

## Getting Started

![node.js](https://www.javatpoint.com/js/nodejs/images/node-js-tutorial.png)

### Node.js

Node.js is an open-source, cross-platform JavaScript run-time environment that executes JavaScript code outside of a browser.

Nodejs allow developers to use javascript to write command line tools and for **server side scripting**. Hence, Nodejs represent what we know about "Javascript Everywhere" Paradigm, which allow us to us javascript on both **client-side** and **server-side**. Nodejs use **V8** Javascript Engine, the same engine for Chrome and Chromium based browser used.

Nodejs was written in 2009 by Ryan Dahl, 13 years after the introduction of first server-side javascript environment which is **Netscape's LiveWire Pro Web**. Dahl write Nodejs based on his critic on the performance limitation of the most popular web server in 2009, Apache HTTP Server.

The initial release of Nodejs in 2009 supported only Linux and Mac OS X. Later in July 2011, the first Nodejs build supporting Windows was released.

![express](https://expressjs.com/images/express-facebook-share.png)

### Express.js

Express.js, or simply Express, is a web application framework for Node.js, released as free and open-source software under the MIT License. It is designed for building web applications and APIs. It has been called the de facto standard server framework for Node.js.

The philosophy of Expressjs is to provide a small and robust tooling for HTTP servers. Making it a great solution for single page apps, website, hybrids, or public HTTP APIs.

![restful api](https://s3.amazonaws.com/kinlane-productions/salesforce/salesforce-rest-api.png)

### RESTFul API

A RESTful API is an application program interface (API) that uses HTTP requests to GET, PUT, POST and DELETE data.

A RESTful API -- also referred to as a RESTful web service -- is based on representational state transfer (REST) technology, an architectural style and approach to communications often used in web services development.

Representational State Transfer is a software architectural style that defines a set of constraints to be used for creating Web services. Web services that conform to the REST architectural style, called RESTful Web services, provide interoperability between computer systems on the Internet.

RESTful API design was defined by Dr. Roy Fielding in his 2000 doctorate dissertation. In order to be a true RESTful API, a web service must adhere to the following six REST architectural constraints:

- Use of a uniform interface (UI). Resources should be uniquely identifiable through a single URL, and only by using the underlying methods of the network protocol, such as DELETE, PUT and GET with HTTP, should it be possible to manipulate a resource.
- Client-server based. There should be a clear delineation between the client and server. UI and request-gathering concerns are the client’s domain. Data access, workload management and security are the server’s domain. This loose coupling of the client and server enables each to be developed and enhanced independent of the other.
- Stateless operations. All client-server operations should be stateless, and any state management that is required should take place on the client, not the server.
- RESTful resource caching. All resources should allow caching unless explicitly indicated that caching is not possible.
- Layered system. REST allows for an architecture composed of multiple layers of servers.
- Code on demand. Most of the time a server will send back static representations of resources in the form of XML or JSON. However, when necessary, servers can send executable code to the client.

### HTTP Requests

All API requests are made by sending a secure HTTPS request using one of the following methods, depending on the action being taken:

- `GET` Get a resource or list of resources
- `POST` Create a resource
- `PUT/PATCH` Update a resource
- `DELETE` Delete a resource

### HTTP Response Codes

Each response will be returned with one of the following HTTP status codes:

| Code  | Status        | Description                                                                       |
| :---- | :------------ | :-------------------------------------------------------------------------------- |
| `200` | `OK`          | The request was successful                                                        |
| `400` | `Bad Request` | There was a problem with the request (security, malformed, data validation, etc.) |

## Installation

1. Clone or download this repository
2. Open app's directory in CMD or Terminal.
3. Type in Terminal `npm install` to install the required packages.
4. Make a new file, **.env** and setup the file. [instruction here](#setup-env-file)
5. Turn on Web Server and MySQL, (Also can be done with third-party tools like XAMPP, WAMP, etc)
6. import database. [instruction here](#setup-database)
7. Open **Postman** desktop application or Chrome web extension (Install **Postman** if you haven't yet)
8. Choose HTTP Method and enter the request URL.(i.e. localhost:3000/product)
9. Check all **Endpoints** [here](#endpoints)

## Setup .env file

Open **.env** file on code editor and copy the code below :

```
SERVER_PORT = 3000

DB_HOST = 'localhost'
DB_USER = 'root'
DB_PASSWORD = ''
DB_NAME = 'pos'
```

## Setup Database

You can import file **`database.sql`** to **phpmyadmin**.

## Endpoints

- **Read All product**

  - **Request** : **`GET product`**
  - Get list of product
  - Method : GET
  - Response : get all product

- **Create a product**
  - **Request** : **`POST /product/order`**
  - Method : POST
  - Response : add product

* **Update a product**

  - **Request** : **`PUT/product/`**
  - Method : PUT
  - Response : update product

* **Delete a product**
  - **Request** : **`DELETE /product/:id`**
  - Method : DELETE
  - Response : delete product

#### Sorting Product By Price

- **Sorting By Price**

  - **Request** : **`GET http://localhost:4000/product/sort?sortby=${by}`**
  - **Response** :
  - Method : GET
  - Response : sorting data by price ascending or descending

#### Order/Transaction Product Endpoint

- **Create a New Order**

  - **Request** : **`POST /product/transaction`**
  - Method : POST
  - Response : add product to table transaction

- **History Order**
  - **Request** : **`GET /product/transaction`**
  - Method : GET
  - Response : GET all order history

### Support

For API support, please email afsoryafsor@gmail.com

# API-Point-Of-Sales-App
