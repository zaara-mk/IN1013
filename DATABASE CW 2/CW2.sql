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
    recipe_ID INTEGER(10),
    name VARCHAR(50),
    serving_size INTEGER(10)
    instructions TEXT,
    description TEXT,
    user_ID INTEGER(10),
    FOREIGN KEY (user_ID) REFERENCES User (user_ID));

CREATE TABLE Ingredient (
    ingredient_ID INTEGER(10) PRIMARY KEY,
    name VARCHAR(50),
    quantity DECIMAL(10,2),
    unit VARCHAR(10),
    recipe_ID INTEGER(10),
    FOREIGN KEY (recipe_ID) REFERENCES Recipe (recipe_ID));

CREATE TABLE Comment (
    comment_ID INTEGER(10),
    comment_description TEXT,
    timestamp TIME,
    recipe_ID INTEGER(10),
    user_ID INTEGER(10),
    FOREIGN KEY (recipe_ID) REFERENCES Recipe (recipe_ID),
    FOREIGN KEY (user_ID) REFERENCES User (user_ID));

CREATE TABLE Rating(
    rating_ID INTEGER(10) PRIMARY KEY,
    rating_score INTEGER (1),
    timestamp TIME,
    recipe_ID INTEGER(10),
    user_ID INTEGER (10),
    FOREIGN KEY (recipe_ID) REFERENCES Recipe (recipe_ID),
    FOREIGN KEY (user_ID) REFERENCES User (user_ID));

/* SECTION 2 - INSERT STATEMENTS */


                     
/* SECTION 3 - UPDATE STATEMENTS - The queries must be explained in natural (English) language first, and then followed up by respective statements */

/*
1)

*/

/*
2)

*/


/* SECTION 4 - SELECT STATEMENTS - The queries must be explained in natural (English) language first, and then followed up by respective SELECTs*/


/* 
1)  

*/
select '1)' AS '';



/* 
2)  

*/
select '2)' AS '';




/* 
3)  

*/
select '3)' AS '';



/* 
4)  

*/
select '4)' AS '';




/* 
5)  

*/
select '5)' AS '';



/* 
6)  

*/
select '6)' AS '';


/* 
7)  

*/
select '7)' AS '';



/* 
8)  

*/
select '8)' AS '';



/* SECTION 5 - DELETE ROWS - The queries must be explained in natural (English) language first, and then followed up by respective statements */

/*
1)

*/

/*
2)

*/


/* SECTION 6 - DROP TABLES */



SHOW TABLES;