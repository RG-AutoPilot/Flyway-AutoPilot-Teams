CREATE TABLE ${flyway:defaultSchema}.Orders
(
    OrderID int,
    UserName String
);

CREATE PROCEDURE ${flyway:defaultSchema}.GetAllOrders()
BEGIN
    SELECT * FROM ${flyway:defaultSchema}.Orders;
END
