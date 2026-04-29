CREATE TABLE ProductSuppliers
(
    ProductId  INT NOT NULL,
    SupplierId INT NOT NULL,
    PRIMARY KEY (ProductId, SupplierId),
    FOREIGN KEY (ProductId) REFERENCES Products (Id),
    FOREIGN KEY (SupplierId) REFERENCES Suppliers (Id)
);