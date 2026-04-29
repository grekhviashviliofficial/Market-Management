CREATE TABLE ProductDetails
(
    Id           INT PRIMARY KEY REFERENCES Products (Id),
    Description  NVARCHAR(500),
    Barcode      VARCHAR(50) UNIQUE
);