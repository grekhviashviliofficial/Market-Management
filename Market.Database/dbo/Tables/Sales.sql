CREATE TABLE Sales
(
    Id          INT PRIMARY KEY IDENTITY (1,1),
    UserId      INT      NOT NULL,
    Comment     NVARCHAR(1000),
    SaleDate    DATETIME NOT NULL,
    SaleStatus  TINYINT  NOT NULL DEFAULT 0 CHECK (SaleStatus IN (0, 1, 2)), -- 0: Pending, 1: Completed, 2: Cancelled
    CreatedDate DATETIME NOT NULL DEFAULT GETDATE(),
    FOREIGN KEY (UserId) REFERENCES Users (Id)
);