CREATE TABLE Suppliers
(
    Id           INT PRIMARY KEY IDENTITY (1,1),
    SupplierName NVARCHAR(100) NOT NULL,
    Phone        NVARCHAR(50),
    Email        NVARCHAR(100),
    Address      NVARCHAR(200),
    IsActive     BIT           NOT NULL DEFAULT 1,
);