--1.create database

create database ecommerce;

--select the database

use ecommerce;

--2. create the tables

CREATE TABLE gold_member_users (
    userid VARCHAR(30),
    signup_date DATE
);


CREATE TABLE users (
    userid VARCHAR(30),
    signup_date DATE
);

CREATE TABLE sales (
    userid VARCHAR(30),
    created_date DATE,
    product_id INT
);

CREATE TABLE product (
    product_id INT,
    product_name VARCHAR(50),
    price INT
);

--3. Insert the values provided above with respective datatypes

INSERT INTO gold_member_users (userid, signup_date) VALUES
('John','09-22-2017'),
('Mary','04-21-2017');

INSERT INTO users (userid, signup_date) VALUES
('John','09-02-2014'),
('Michel','01-15-2015'),
('Mary','04-11-2014');

INSERT INTO sales (userid, created_date, product_id) VALUES
('John','04-19-2017',2), ('Mary','12-18-2019',1), ('Michel','07-20-2020',3), ('John','10-23-2019',2),
('John','03-19-2018',3), ('Mary','12-20-2016',2), ('John','11-09-2016',1), ('John','05-20-2016',3),
('Michel','09-24-2017',1), ('John','03-11-2017',2), ('John','03-11-2016',1), ('Mary','11-10-2016',1),
('Mary','12-07-2017',2);

INSERT INTO product (product_id,product_name,price) VALUES
(1,'Mobile',980), (2,'Ipad',870), (3,'Laptop',330);

--4. all the tables in the same database(ecommerce)

SELECT * FROM INFORMATION_SCHEMA.tables;
select name from sys.tables;

--5. Count all the records of all four tables using single query

SELECT
    (SELECT COUNT(*) FROM gold_member_users) AS gold_member_users_count,
    (SELECT COUNT(*) FROM users) AS users_count,
    (SELECT COUNT(*) FROM sales) AS sales_count,
    (SELECT COUNT(*) FROM product) AS product_count;

--6.What is the total amount each customer spent on ecommerce company

SELECT sales.userid,SUM(product.price) AS total_spent
FROM sales
JOIN product ON sales.product_id = product.product_id
GROUP BY sales.userid;

--7.Find the distinct dates of each customer visited the website

select distinct created_date,userid from sales;

--8.Find the first product purchased by each customer using 3 tables(users, sales, product)

SELECT sales.userid, MIN(created_date) AS first_purchase_date, product_name
FROM users
JOIN sales ON users.userid = sales.userid
JOIN product ON sales.product_id = product.product_id
GROUP BY sales.userid, product_name;


