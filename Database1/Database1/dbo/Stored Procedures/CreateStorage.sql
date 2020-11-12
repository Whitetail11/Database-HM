CREATE PROCEDURE [dbo].[CreateStorage]
	@storageName nvarchar(50)
AS
begin
	insert into Storage
	values(@storageName)
end
