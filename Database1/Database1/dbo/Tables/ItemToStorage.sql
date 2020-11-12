CREATE TABLE [dbo].[ItemToStorage]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [ItemId] INT NULL, 
    [Count] INT NULL, 
    [StorageId] INT NULL, 
    CONSTRAINT [FK_ItemToStorage_ToItem] FOREIGN KEY ([ItemId]) REFERENCES [Item]([Id]), 
    CONSTRAINT [FK_ItemToStorage_ToStorage] FOREIGN KEY ([StorageId]) REFERENCES [Storage]([Id])
)
