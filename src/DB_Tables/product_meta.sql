CREATE TABLE product_meta (
  id serial PRIMARY KEY,
  product_id INT NOT NULL,
  key VARCHAR(255) NOT NULL,
  value TEXT NULL DEFAULT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  FOREIGN KEY (product_id)
      REFERENCES products (id)
  );