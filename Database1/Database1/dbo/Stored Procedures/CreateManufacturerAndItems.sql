CREATE PROCEDURE [dbo].[CreateManufacturerAndItems]
	@manufacturerName nvarchar(50),
	@items ItemTableType READONLY
AS
begin
	INSERT INTO Manufacturer
	values(@manufacturerName)
	INSERT INTO Item (Name, ManufacturerId)
		Select t.ItemName, m.Id FROM @items as t, Manufacturer as m WHERE Name = @manufacturerName
end