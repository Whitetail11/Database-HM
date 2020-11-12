select Manufacturer.Name as ManufacturerName, ItemToStorage.Count as CountItems
from ItemToStorage
	JOIN Item ON Item.id = ItemToStorage.ItemId
	JOIN Manufacturer ON Item.ManufacturerId = Manufacturer.Id
	GROUP BY Manufacturer.Name, ItemToStorage.Count