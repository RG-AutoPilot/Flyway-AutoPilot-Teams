-- Create the CONTACTS table
CREATE TABLE CONTACTS 
(
    ID INT NOT NULL
);

-- Add additional columns to the CONTACTS table
ALTER TABLE CONTACTS 
ADD 
    first_name NVARCHAR(128),
    last_name NVARCHAR(128),
    gender NVARCHAR(128),
    address_line_1 NVARCHAR(128),
    address_line_2 NVARCHAR(128),
    city NVARCHAR(128),
    postcode NVARCHAR(128),
    phone INT,
    email NVARCHAR(128);

-- Create the PRODUCTS table
CREATE TABLE PRODUCTS 
(
    ID INT NOT NULL
);

-- Add additional columns to the PRODUCTS table
ALTER TABLE PRODUCTS 
ADD 
    ProductName NVARCHAR(128),
    ProductCode INT,
    Category NVARCHAR(128),
    CurrentLine NVARCHAR(128),
    ReorderQuantity INT;

-- Create the LOCATIONS table
CREATE TABLE LOCATIONS
(
    ID INT NOT NULL
);

-- Create the SALESTEAM table
CREATE TABLE SALESTEAM
(
    ID INT NOT NULL
);

-- Create or replace the GetContacts stored procedure
CREATE OR REPLACE PROCEDURE GetContacts()
RETURNS STRING NOT NULL
LANGUAGE JAVASCRIPT
AS
$$
var cmd = `
SELECT * FROM contacts
`;
var sql = snowflake.createStatement({sqlText: cmd});
var result = sql.execute();
return '💰';
$$;

-- Create or replace the GetName stored procedure
CREATE OR REPLACE PROCEDURE GetName()
RETURNS STRING NOT NULL
LANGUAGE JAVASCRIPT
AS
$$
var cmd = `
SELECT FIRST_NAME FROM CONTACTS
`;
var sql = snowflake.createStatement({sqlText: cmd});
var result = sql.execute();
return '💰';
$$;
