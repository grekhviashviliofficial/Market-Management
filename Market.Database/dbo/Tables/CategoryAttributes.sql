CREATE TABLE CategoryAttributes
(
    Id            int          not null primary key identity (1,1),
    CategoryId    int references Categories (Id),
    AttributeName nvarchar(50) not null,
    AttributeType tinyint      not null, -- 1: string, 2: number, 3: boolean, 4: date 
    OrderPosition int          not null default 0,
    CreateDate    datetime     not null default getdate()
);