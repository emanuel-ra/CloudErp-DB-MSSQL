CREATE PROCEDURE sp_reset_relation_role_warehouse
	@RoleId INT 
		AS
			BEGIN 
				DELETE FROM RelRoleWarehouse WHERE RoleId = @RoleId
			END;