CREATE PROCEDURE [dbo].[DeleteItem]
	@ItemId int,
	@StorageId int
AS
begin
	Delete ItemToStorage 
	WHERE ItemId = @ItemId AND StorageId = @StorageId
end