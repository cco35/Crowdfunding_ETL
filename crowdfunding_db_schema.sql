-- Create category table
CREATE TABLE IF NOT EXISTS category (
    category_id VARCHAR(4) PRIMARY KEY,
    category VARCHAR(20)
);

-- Create subcategory table
CREATE TABLE IF NOT EXISTS subcategory (
    subcategory_id VARCHAR(8) PRIMARY KEY,
    subcategory VARCHAR(25)
);

-- Create contacts table
CREATE TABLE IF NOT EXISTS contacts (
    contact_id INT PRIMARY KEY,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    email VARCHAR(50)
);

-- Create enum to use in employees table sex column
CREATE TYPE outcome_enum AS ENUM ('successful', 'failed', 'live', 'canceled');

-- Create campaign table
CREATE TABLE IF NOT EXISTS campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(50),
    description VARCHAR(100),
    goal DECIMAL(10,2),
    pledged DECIMAL(10,2),
    outcome outcome_enum,
    backers_count INT,
    country CHAR(2),
    currency CHAR(3),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR(4),
    subcategory_id VARCHAR(8),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);

-- Verify creation of tables
SELECT * FROM category;
SELECT * FROM subcategory;
SELECT * FROM contacts;
SELECT * FROM campaign;