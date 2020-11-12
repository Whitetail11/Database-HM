﻿/*
Скрипт развертывания для HomeWorkDB

Этот код был создан программным средством.
Изменения, внесенные в этот файл, могут привести к неверному выполнению кода и будут потеряны
в случае его повторного формирования.
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "HomeWorkDB"
:setvar DefaultFilePrefix "HomeWorkDB"
:setvar DefaultDataPath "C:\Users\danya\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\mssqllocaldb\"
:setvar DefaultLogPath "C:\Users\danya\AppData\Local\Microsoft\Microsoft SQL Server Local DB\Instances\mssqllocaldb\"

GO
:on error exit
GO
/*
Проверьте режим SQLCMD и отключите выполнение скрипта, если режим SQLCMD не поддерживается.
Чтобы повторно включить скрипт после включения режима SQLCMD выполните следующую инструкцию:
SET NOEXEC OFF; 
*/
:setvar __IsSqlCmdEnabled "True"
GO
IF N'$(__IsSqlCmdEnabled)' NOT LIKE N'True'
    BEGIN
        PRINT N'Для успешного выполнения этого скрипта должен быть включен режим SQLCMD.';
        SET NOEXEC ON;
    END


GO
USE [$(DatabaseName)];


GO
PRINT N'Выполняется создание [dbo].[AddItemToStorage]...';


GO
CREATE PROCEDURE [dbo].[AddItemToStorage]
	@itemId int,
	@storageId int,
	@itemCount int
AS
begin
	insert into ItemToStorage
		values(@itemId, @itemCount, @storageId)
end
GO
PRINT N'Выполняется создание [dbo].[CreateStorage]...';


GO
CREATE PROCEDURE [dbo].[CreateStorage]
	@storageName nvarchar(50)
AS
begin
	insert into Storage
	values(@storageName)
end
GO
PRINT N'Обновление завершено.';


GO
