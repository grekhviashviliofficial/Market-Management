CREATE TABLE SaleItem
(
    SaleId    INT   NOT NULL,
    ProductId INT   NOT NULL,
    Quantity  INT   NOT NULL,
    UnitPrice MONEY NOT NULL,
    PRIMARY KEY (SaleId, ProductId),
    FOREIGN KEY (SaleId) REFERENCES Sales (Id),
    FOREIGN KEY (ProductId) REFERENCES Products (Id)
);