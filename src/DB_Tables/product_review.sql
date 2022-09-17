CREATE TABLE product_review (
  id serial PRIMARY KEY,
  product_id INT NOT NULL,
  user_id INT NOT NULL,
  title VARCHAR(255) NOT NULL,
  rating SMALLINT NOT NULL DEFAULT 0,
  created_at TIMESTAMP NOT NULL,
  updated_at TIMESTAMP NOT NULL,
  content TEXT NULL DEFAULT NULL,
  FOREIGN KEY (product_id)
      REFERENCES products (id),
  FOREIGN KEY (user_id)
      REFERENCES users (id)
);