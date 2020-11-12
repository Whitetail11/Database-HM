/*
Шаблон скрипта после развертывания							
--------------------------------------------------------------------------------------
 В данном файле содержатся инструкции SQL, которые будут добавлены в скрипт построения.		
 Используйте синтаксис SQLCMD для включения файла в скрипт после развертывания.			
 Пример:      :r .\myfile.sql								
 Используйте синтаксис SQLCMD для создания ссылки на переменную в скрипте после развертывания.		
 Пример:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF NOT EXISTS (SELECT * FROM dbo.Manufacturer WHERE Name = 'testMan1')
BEGIN
DECLARE @items as ItemTableType
INSERT INTO @items Values ('Item1')
    exec CreateManufacturerAndItems 'testMan1', @items
    exec CreateManufacturerAndItems 'testMan2', @items
    exec CreateStorage 'Storage1'
    exec CreateStorage 'Storage2'
    exec AddItemToStorage 1, 1, 10
    exec AddItemToStorage 1,1,20
    exec AddItemToStorage 2,2,5
    exec AddItemToStorage 2,2,10
END