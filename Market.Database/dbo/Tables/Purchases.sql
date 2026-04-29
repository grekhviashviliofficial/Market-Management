CREATE TABLE Purchases
(
    Id             INT PRIMARY KEY IDENTITY (1,1),
    SupplierId     INT      NOT NULL,
    Comment        NVARCHAR(1000),
    PurchaseDate   DATETIME NOT NULL,
    PurchaseStatus TINYINT  NOT NULL DEFAULT 0 CHECK (PurchaseStatus IN (0, 1, 2)), -- 0: Pending, 1: Completed, 2: Cancelled
    CreatedDate    DATETIME          DEFAULT GETDATE(),
    FOREIGN KEY (SupplierId) REFERENCES Suppliers (Id)
);