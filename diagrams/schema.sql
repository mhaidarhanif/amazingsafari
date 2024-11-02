CREATE TABLE "User" (
  "id" String PRIMARY KEY,
  "username" String UNIQUE NOT NULL,
  "email" String UNIQUE NOT NULL,
  "password" Password,
  "carts" Cart NOT NULL,
  "createdAt" DateTime NOT NULL DEFAULT (now()),
  "updatedAt" DateTime NOT NULL
);

CREATE TABLE "Password" (
  "id" String PRIMARY KEY,
  "hash" String NOT NULL,
  "user" User NOT NULL,
  "userId" String UNIQUE NOT NULL
);

CREATE TABLE "Product" (
  "id" String PRIMARY KEY,
  "slug" String UNIQUE NOT NULL,
  "name" String UNIQUE NOT NULL,
  "imageURL" String NOT NULL,
  "price" Int NOT NULL,
  "description" String NOT NULL,
  "sku" String UNIQUE NOT NULL,
  "cartItems" CartItem NOT NULL,
  "createdAt" DateTime NOT NULL DEFAULT (now()),
  "updatedAt" DateTime NOT NULL
);

CREATE TABLE "CartItem" (
  "id" String PRIMARY KEY,
  "product" Product NOT NULL,
  "productId" String NOT NULL,
  "quantity" Int NOT NULL DEFAULT 1,
  "cart" Cart NOT NULL,
  "cartId" String NOT NULL,
  "createdAt" DateTime NOT NULL DEFAULT (now()),
  "updatedAt" DateTime NOT NULL
);

CREATE TABLE "Cart" (
  "id" String PRIMARY KEY,
  "user" User NOT NULL,
  "userId" String NOT NULL,
  "items" CartItem NOT NULL,
  "createdAt" DateTime NOT NULL DEFAULT (now()),
  "updatedAt" DateTime NOT NULL
);

ALTER TABLE "User" ADD FOREIGN KEY ("id") REFERENCES "Password" ("userId");

ALTER TABLE "CartItem" ADD FOREIGN KEY ("productId") REFERENCES "Product" ("id");

ALTER TABLE "CartItem" ADD FOREIGN KEY ("cartId") REFERENCES "Cart" ("id");

ALTER TABLE "Cart" ADD FOREIGN KEY ("userId") REFERENCES "User" ("id");
