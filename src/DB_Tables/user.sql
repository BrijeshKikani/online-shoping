CREATE TABLE users (
	id serial PRIMARY KEY,
    first_name VARCHAR(255) DEFAULT NULL,
  middle_name VARCHAR(255) DEFAULT NULL,
  last_name VARCHAR(255) DEFAULT NULL,
	email VARCHAR ( 255 ) UNIQUE NOT NULL,
    mobile VARCHAR(15) NULL,
    password_hash VARCHAR(32) NOT NULL,
	last_login_at TIMESTAMP NOT NULL,
	created_at TIMESTAMP NOT NULL,
	updated_at TIMESTAMP NOT NULL
);