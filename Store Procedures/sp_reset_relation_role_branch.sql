CREATE PROCEDURE sp_reset_relation_role_branch
	@RoleId INT 
		AS
			BEGIN 
				DELETE FROM RelRoleBranches WHERE RoleId = @RoleId
			END;