/*
Student name: Zaara Khan             
Student ID: 230001244
*/


/* SECTION 1 - CREATE TABLE STATEMENTS */

CREATE TABLE User (
    user_ID INTEGER(10) PRIMARY KEY,
    email VARCHAR(50),
    password VARCHAR(20),
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    username VARCHAR(20),
    date_of_birth INTEGER(8));

CREATE TABLE Recipe (
    recipe_ID INTEGER(10) PRIMARY KEY,
    recipe_name VARCHAR(50),
    serving_size INTEGER(5),
    instructions TEXT,
    recipe_description TEXT,
    user_ID INTEGER(10),
    FOREIGN KEY (user_ID) REFERENCES User (user_ID));

CREATE TABLE Ingredient (
    ingredient_ID INTEGER(10) PRIMARY KEY,
    ingredient_name VARCHAR(50),
    quantity DECIMAL(10,2),
    unit VARCHAR(10),
    recipe_ID INTEGER(10),
    FOREIGN KEY (recipe_ID) REFERENCES Recipe (recipe_ID));

CREATE TABLE Comment (
    comment_ID INTEGER(10) PRIMARY KEY,
    comment_description TEXT,
    comment_timestamp TIME,
    recipe_ID INTEGER(10),
    user_ID INTEGER(10),
    FOREIGN KEY (recipe_ID) REFERENCES Recipe (recipe_ID),
    FOREIGN KEY (user_ID) REFERENCES User (user_ID));

CREATE TABLE Rating(
    rating_ID INTEGER(10) UNSIGNED PRIMARY KEY,
    rating_score INTEGER (1),
    rating_timestamp TIME,
    recipe_ID INTEGER(10),
    user_ID INTEGER (10),
    FOREIGN KEY (recipe_ID) REFERENCES Recipe (recipe_ID),
    FOREIGN KEY (user_ID) REFERENCES User (user_ID));


/* SECTION 2 - INSERT STATEMENTS */

INSERT INTO User VALUES 
    (0000000001, "elinaakther@gmail.com", "elina123", "Elina", "Akther", "elinaakther", 19991212),
    (0000000002, "eisaislam@yahoo.com", "eisa765", "Eisa", "Islam", "eisaislam", 20080821),
    (0000000003, "khadijahislam@gmail.com", "khadijahislam111", "Khadijah", "Islam", "khadijahislam", 20040206),
    (0000000004, "noahislam@outlook.com", "noahislam", "Noah", "Islam", "noahsrecipes", 20031023),
    (0000000005, "zaarakhan@gmail.com", "zaarakhan", "Zaara", "Khan", "zaarakhan", 20050405),
    (0000000006, "saimaakther@hotmail.com", "akther987", "Saima", "Akther", "saimacooks", 20060902),
    (0000000007, "hibasaib@gmail.com", "hiba123saib", "Hiba", "Saib", "foodbyhiba", 20041207),
    (0000000008, "zaynabcadow@yahoo.com", "zaanoow", "Zaynab", "Cadow", "zaynabeats", 20040923),
    (0000000009, "ayahchakour@gmail.com", "ayah123", "Ayah", "Chakour", "ayaheats", 20050123),
    (0000000010, "selmakhatbane@gmail.com", "selmak123", "Selma", "Khatbane", "selmarrr", 20050304),
    (0000000011, "luckybegum@hotmail.com", "lucky12lucky", "Lucky", "Begum", "luckyfoodie", 19830619);

INSERT INTO Recipe VALUES
    (1000000001, "boiled pasta", 2, "boil the pasta in water", "how to cook pasta", 0000000005),
    (1000000002, "cooked chickpeas", 1, "steam the chickpeas in a colander", "cooked chickpeas", 0000000011),
    (1000000003, "chicken curry", 4, "mix the chicken in spices listed and marinate", "spicy chicken curry recipe", 0000000007),
    (1000000004,"fruit salad" , 6, "cut the fruits and mix", "tasty fruit salad", 0000000009),
    (1000000005, "hummus", 3, "blend the chickpeas", "easy hummus recipe", 0000000010),
    (1000000006, "orange juice", 2, "squeeze the oranges", "delicious orange juice", 0000000004),
    (1000000007, "cupcakes", 12, "put the batter in the oven", "easy bake cupcakes", 0000000002),
    (1000000008, "brownies", 12, "chop up the chocolate and add to batter", "brownies", 0000000003),
    (1000000009, "cookies", 8, "combine all ingredients", "healthy alternative cookies", 0000000006),
    (1000000010, "smoothie", 1, "blend together", "single serve smoothie", 0000000008);

INSERT INTO Ingredient VALUES
    (2000000001, "pasta", 100.00, "gram", 1000000001),
    (2000000002, "water", 150.00, "millilitre", 1000000001),
    (2000000003, "chickpeas", 150.00, "gram", 1000000002),
    (2000000004, "chicken", 500.00, "gram", 1000000003),
    (2000000005, "apple", 100.00, "gram", 1000000004),
    (2000000006, "banana", 100.00, "gram", 1000000004),
    (2000000007, "strawberry", 100.00, "gram", 1000000004),
    (2000000008, "orange", 500.00, "gram", 1000000006),
    (2000000009, "flour", 250.00, "gram", 1000000007),
    (2000000010, "dark chocolate", 125.50, "gram", 1000000008),
    (2000000011, "milk chocolate", 150.00, "gram", 1000000008),
    (2000000012, "milk", 100.00, "millilitre", 1000000010); 

INSERT INTO Comment VALUES
    (300000001, "VERY NICE", '16:04:03', 1000000007, 0000000009),
    (300000002, "Two Sweet", '08:09:10', 1000000008, 0000000008),
    (300000003, "good", '09:16:03', 1000000008, 0000000008),
    (300000004, "yummy", '13:04:23', 1000000009, 0000000005),
    (300000005, "made this, it was very delicious", '17:14:44', 1000000004, 0000000010),
    (300000006, "super gpod", '17:04:17', 1000000003, 0000000011),
    (300000007, "my go to recipe", '18:12:37', 1000000010, 0000000009),
    (300000008, "Thank you.", '16:34:49', 1000000003, 0000000004),
    (300000009, "i need to try this", '12:28:52', 1000000006, 0000000002),
    (300000010, "very yummy", '21:04:53', 1000000005, 0000000001);

INSERT INTO Rating VALUES 
    (4000000001, 5, '10:15:34', 1000000007, 0000000005),
    (4000000002, 4, '19:20:54', 1000000001, 0000000007),
    (4000000003, 2, '18:45:52', 1000000008, 0000000008),
    (4000000004, 5, '13:34:23', 1000000002, 0000000003),
    (4000000005, 4, '05:56:53', 1000000009, 0000000005),
    (4000000006, 3, '12:11:26', 1000000007, 0000000009),
    (4000000007, 5, '08:16:17', 1000000004, 0000000011),
    (4000000008, 5, '14:26:06', 1000000010, 0000000010),
    (4000000009, 4, '21:26:24', 1000000003, 0000000001),
    (4000000010, 5, '13:19:27', 1000000006, 0000000002);


/* SECTION 3 - UPDATE STATEMENTS - The queries must be explained in natural (English) language first, and then followed up by respective statements */

/* 1) Change Zaara Khan's current username to 'recipesbyzaara'. */
UPDATE User SET username = 'recipesbyzaara' WHERE username = 'zaarakhan';

/* 2) All recipes with serving size of 8 should change to have a serving size of 6. */
UPDATE Recipe SET serving_size = 6 WHERE serving_size = 8;


/* SECTION 4 - SELECT STATEMENTS - The queries must be explained in natural (English) language first, and then followed up by respective SELECTs*/

/* 1) List the first and last names of users who use gmail email addresses from youngest to oldest. */
select '1)' AS '';
SELECT first_name, last_name FROM User WHERE email LIKE '%gmail%' ORDER BY date_of_birth DESC;

/* 2) List all the recipes that have a rating of 5 and a serving size greater than 5. */
select '2)' AS '';
SELECT recipe_name FROM Recipe INNER JOIN Rating ON Recipe.recipe_ID = Rating.recipe_ID WHERE serving_size > 5 AND rating_score = 5;

/* 3) How many users have created comments and left ratings?*/
select '3)' AS '';
SELECT COUNT(DISTINCT Comment.user_ID) AS users_with_comment_and_rating
FROM Comment
INNER JOIN Rating ON Comment.user_ID = Rating.user_ID;

/* 4) Find the first and last names of users who have created a comment and received less than a rating of 5*/
select '4)' AS '';
SELECT DISTINCT first_name, last_name 
FROM User INNER JOIN Comment 
ON User.user_ID = Comment.user_ID 
INNER JOIN Rating 
ON Comment.user_ID = Rating.user_ID
WHERE rating_score < 5;

/* 5) List the emails and usernames of players who have used 'banana' as an ingredient.*/
select '5)' AS '';
SELECT email, username 
FROM User 
WHERE EXISTS (SELECT *
  FROM Recipe 
  INNER JOIN Ingredient 
  ON Recipe.recipe_ID = Ingredient.recipe_ID
  WHERE User.user_ID = Recipe.user_ID
  AND ingredient_name = 'water');

/* 6) Find the first names of users with the surname 'Islam' and users who have left a comment after 1pm.*/
select '6)' AS '';
SELECT first_name
FROM User
INNER JOIN Comment
ON Comment.user_ID = User.user_ID
WHERE comment_timestamp > '13:00:00'
UNION 
SELECT first_name
FROM User
WHERE last_name = 'Islam';

/* 7) Give an average rating for each recipe, but only show recipes with an average rating greater than or equal to 4. */
select '7)' AS '';
SELECT recipe_ID, AVG(rating_score) AS average_rating
FROM Rating
GROUP BY recipe_ID
HAVING AVG(rating_score) >= 4;


/* 8) List the first and last names of users who left a comment but didn't rate any recipes.*/
select '8)' AS '';
SELECT User.first_name, User.last_name
FROM User
LEFT JOIN Comment ON User.user_ID = Comment.user_ID
LEFT JOIN Rating ON User.user_ID = Rating.user_ID
WHERE Comment.user_ID IS NOT NULL
AND Rating.user_ID IS NULL;


/* SECTION 5 - DELETE ROWS - The queries must be explained in natural (English) language first, and then followed up by respective statements */

/* 1) Selma Khatbane removes any comments made under recipes. */
DELETE FROM Comment WHERE user_ID = 0000000010;

/* 2) Any ratings made before 10am should be removed. */
DELETE FROM Rating WHERE rating_timestamp < '10:00:00';


/* SECTION 6 - DROP TABLES */

DROP TABLE Comment;
DROP TABLE Rating;
DROP TABLE Ingredient;
DROP TABLE Recipe;
DROP TABLE User;


SHOW TABLES;