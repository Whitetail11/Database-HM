CREATE PROCEDURE [dbo].[AddItemToStorage]
	@itemId int,
	@storageId int,
	@itemCount int
AS
begin
	insert into ItemToStorage
		values(@itemId, @itemCount, @storageId)
end