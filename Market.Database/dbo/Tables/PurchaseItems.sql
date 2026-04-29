CREATE TABLE PurchaseItems
(
    PurchaseId INT   NOT NULL,
    ProductId  INT   NOT NULL,
    Quantity   INT   NOT NULL,
    UnitPrice  MONEY NOT NULL,
    PRIMARY KEY (PurchaseId, ProductId),
    FOREIGN KEY (PurchaseId) REFERENCES Purchases (Id),
    FOREIGN KEY (ProductId) REFERENCES Products (Id)
);