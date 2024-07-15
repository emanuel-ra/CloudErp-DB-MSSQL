CREATE PROCEDURE sp_reset_relation_role_account
	@RoleId INT 
		AS
			BEGIN 
				DELETE FROM RelRoleAccounts WHERE RoleId = @RoleId
			END;