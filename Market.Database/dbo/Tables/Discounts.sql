CREATE TABLE Discounts
(
    Id              INT PRIMARY KEY IDENTITY (1,1),
    ProductId       INT,
    DiscountPercent DECIMAL(5, 2) NOT NULL,
    StartDate       DATETIME      NOT NULL,
    EndDate         DATETIME,
    FOREIGN KEY (ProductId) REFERENCES Products (Id)
);