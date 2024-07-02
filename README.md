# Amazing Safari

[Amazing Safari](https://amazingsafari.haidar.dev) online store for zoo products merchandise

Table of Contents:

- [Amazing Safari](#amazing-safari)
  - [Links](#links)
  - [Features](#features)
  - [UI Designs](#ui-designs)
    - [Home Page](#home-page)

## Links

- Website/Frontend: <https://amazingsafari.haidar.dev>
  - Backend: <https://amazingsafari-backend.haidar.dev>
- Repositories:
  - General: <https://github.com/mhaidarhanif/amazingsafari>
  - Backend: <https://github.com/mhaidarhanif/amazingsafari-backend>
  - Frontend: <https://github.com/mhaidarhanif/amazingsafari-frontend>

Inspirations:

- <https://safariwonders.com>
- <https://tamansafari.com>
- <https://stlzoo.org/services/gift-shops/zoo-merchandise>

## Features

- Home page
  - Hero section
  - Products catalogue. Example: <https://safariwonders.com/product-product>
- Product page
  - Image
  - SKU (stock keeping unit)
  - Name
  - Price
  - Description
  - Add to cart form: quantity input & add to cart button
- Shopping cart page
  - Product items to buy
    - Image, name, price, quantity, total (price x quantity)
    - Remove item
  - Link: continue shopping, go to products catalogue
  - Link: checkout
- Checkout page
  - Order summary
    - Product items to buy
    - Grand total of all product items to buy
- Place order / transaction is being processed

## UI Designs

- Figma: <https://www.figma.com/design/TC8pwzy5HpWoFAQWJpN6IJ/amazingsafari.haidar.dev>

### Home Page

<img alt="Home Page" src="./designs/home.jpg" width="400" />

## Entity Relationship Diagram (ERD)

![ERD](./diagrams/erd.svg)

## REST API Endpoints

- Production: `https://amazingsafari.haidar.dev`
- Local: `http://localhost:3000`

| Endpoint         | HTTP     | Description               |
| ---------------- | -------- | ------------------------- |
| `/products`      | `GET`    | Get all products          |
| `/products/:id`  | `GET`    | Get product by id         |
| `/products/seed` | `POST`   | Seed all initial products |
| `/products`      | `POST`   | Add new product           |
| `/products`      | `DELETE` | Delete all products       |
| `/products/:id`  | `DELETE` | Delete product by id      |
| `/products/:id`  | `PUT`    | Update product by id      |

### Product

```json
{
  "id": "abc123",
  "name": "Panda Plush",
  "price": 120000
}
```

### Add New Product

Request Body:

```json
{
  "name": "Panda Plush",
  "price": 120000,
  "color": "white"
}
```

Response Body:

```json
{
  "id": "abc123",
  "name": "Panda Plush",
  "price": 120000,
  "colors": ["white"]
}
```
