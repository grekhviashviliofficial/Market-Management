CREATE TABLE [dbo].[Users]
(
    Id           INT PRIMARY KEY IDENTITY (1,1),
    Username     NVARCHAR(50)  NOT NULL UNIQUE,
    PasswordHash NVARCHAR(255) NOT NULL,
    Email        NVARCHAR(100) NOT NULL UNIQUE,
    IsActive     BIT           NOT NULL DEFAULT 1,
    CreatedDate  DATETIME      NOT NULL DEFAULT GETDATE(),
    UpdatedDate  DATETIME      NULL
);