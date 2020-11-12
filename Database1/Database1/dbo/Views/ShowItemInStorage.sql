CREATE VIEW [dbo].[ShowItemInStorage]
	AS 
	select Item.Name as ItemName, Manufacturer.Name as ManufacturerName, Storage.Name as StorageName
	from ItemToStorage
		JOIN Item ON Item.id = ItemToStorage.ItemId
		JOIN Storage ON ItemToStorage.StorageId = Storage.Id
		JOIN Manufacturer ON Item.ManufacturerId = Manufacturer.Id