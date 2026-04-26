create table [dbo].[Categories]
(
    Id           int primary key identity (1,1),
    CategoryName nvarchar(100) not null unique,
    Description  nvarchar(500) null,
    IsActive     bit           not null default 1,
    CreateDate   datetime      not null default getdate(),
    UpdateDate   datetime      null
);