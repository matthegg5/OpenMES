USE [OpenMES]
GO

--security seed data

INSERT INTO [sec].MenuType (MenuTypeID, TypeDescription, Icon)
SELECT NEWID(), 'Folder', BulkColumn FROM OPENROWSET( Bulk 'C:\Images\folder.bmp', SINGLE_BLOB) AS BLOB

GO

INSERT INTO [sec].MenuType (MenuTypeID, TypeDescription, Icon)
SELECT NEWID(), 'Setup', BulkColumn FROM OPENROWSET( Bulk 'C:\Images\cog.bmp', SINGLE_BLOB) AS BLOB

GO

INSERT INTO [sec].MenuType (MenuTypeID, TypeDescription, Icon)
SELECT NEWID(), 'Data Entry', BulkColumn FROM OPENROWSET( Bulk 'C:\Images\pc.bmp', SINGLE_BLOB) AS BLOB

GO

DECLARE @OpenMESUserPwd NVARCHAR(MAX)
SET @OpenMESUserPwd = NEWID()

INSERT INTO [sec].UserAccounts
VALUES (NEWID(), 'OpenMES', 'openmes', 0, 'OpenMES User', 0, 1, @OpenMESUserPwd) 


PRINT 'OpenMES password is ' + @OpenMESUserPwd

SET @OpenMESUserPwd = ''

GO



