CREATE PROCEDURE sp_reset_relation_role_company
	@RoleId INT 
		AS
			BEGIN 
				DELETE FROM RelRoleCompanies WHERE RoleId = @RoleId
			END;