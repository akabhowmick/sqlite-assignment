PRAGMA foreign_keys = ON;

CREATE TABLE users (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	first_name TEXT NOT NULL,
	last_name TEXT NOT NULL,
	motto TEXT
);

CREATE TABLE dogs (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT NOT NULL
);

CREATE TABLE favorites (
  id INTEGER PRIMARY KEY AUTOINCREMENT, 
  user_id INTEGER NOT NULL,
  dog_id INTEGER NOT NULL,
  unique(user_id, dog_id),
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (dog_id) REFERENCES dogs(id)
);


INSERT INTO users (first_name, last_name, motto)
VALUES
  ("Jon", "Higgz", "I love coding"),
  ("Andrey", "Rusterton", "I love coding even more"),
  ("Peter", "Garboni", "I love coding even more");

INSERT INTO dogs (name)
VALUES
  ("DOOMSLAYER"),
  ("Zoey"),
  ("Jefferey");

INSERT INTO favorites (user_id, dog_id)
VALUES
  (3,1),
  (1,1),
  (2,1),
  (1,3),
  (2,2);