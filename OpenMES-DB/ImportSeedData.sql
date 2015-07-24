--security seed data

INSERT INTO [sec].MenuType
VALUES (NEWID(), 'Folder')

GO

INSERT INTO [sec].MenuType
VALUES (NEWID(), 'Setup')

GO

INSERT INTO [sec].MenuType
VALUES (NEWID(), 'Data Entry Form')

GO

DECLARE @OpenMESUserPwd NVARCHAR(MAX)
SET @OpenMESUserPwd = NEWID()

INSERT INTO [sec].UserAccounts
VALUES (NEWID(), 'OpenMES', 'openmes', FALSE, 'OpenMES User', FALSE, TRUE, @OpenMESUsrPwd) 
GO

SELECT 'OpenMES password is ' + @OpenMESUserPwd

SET @OpenMESUserPwd = ''

GO



