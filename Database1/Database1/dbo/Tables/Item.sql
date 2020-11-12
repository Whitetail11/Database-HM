CREATE TABLE [dbo].[Item]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(50) NULL, 
    [ManufacturerId] INT NULL, 
    CONSTRAINT [FK_Item_ToManufacturer] FOREIGN KEY ([ManufacturerId]) REFERENCES [Manufacturer]([Id])
)
