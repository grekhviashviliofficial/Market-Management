CREATE TABLE ProductAttributes
(
    CategoryAttributeId int references CategoryAttributes (Id),
    ProductId           int references Products (Id),
    StringValue         nvarchar(50)   null,
    NumericValue        decimal(18, 2) null,
    BooleanValue        bit            null,
    DateValue           datetime       null,
    -- 1: string, 2: number, 3: boolean, 4: date
    primary key (ProductId, CategoryAttributeId),
    CreateDate          datetime       not null default getdate(),
    UpdateDate          datetime       null
);