CREATE TABLE users (
user_id SERIAL PRIMARY KEY,
first_name VARCHAR(47),
last_name VARCHAR (47),
email VARCHAR(47),
username VARCHAR(47),-
password VARCHAR(47)
);

CREATE TABLE recipes(
recipe_id SERIAL PRIMARY KEY,
author VARCHAR(47) NOT NULL REFERENCES users(user_id),
ingredients VARCHAR(74),
is_public BOOLEAN DEFAULT true
);

CREATE TABLE occasions(
occasion_id SERIAL PRIMARY KEY,
author VARCHAR(47) NOT NULL REFERENCES users(user_id),
recipes VARCHAR(47) NOT NULL REFERENCES recipes(recipe_id),
is_public BOOLEAN DEFAULT true
);

CREATE TABLE groceryList(
grocery_list_id SERIAL PRIMARY KEY,
recipe_ingredients VARCHAR(321) NOT NULL REFERENCES recipes(ingredients),
author VARCHAR(47) NOT NULL REFERENCES users(user_id)
);
