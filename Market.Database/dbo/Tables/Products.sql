create table [dbo].[Products]
(
    Id          int primary key identity (1,1),
    ProductCode varchar(10)    not null unique,
    ProductName nvarchar(100)  not null,
    CategoryId  int            not null,
    Price       decimal(18, 2) not null,
    IsActive    bit            not null default 1,
    CreateDate  datetime       not null default getdate(),
    UpdateDate  datetime       null,
    foreign key (CategoryId) references Categories (Id)
);