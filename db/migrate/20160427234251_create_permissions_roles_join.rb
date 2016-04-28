class CreatePermissionsRolesJoin < ActiveRecord::Migration
  def change
    create_table :permissions_roles, :id => false do |t|
      t.integer "role_id"
      t.integer "permission_id"
    end
    add_index :permissions_roles, ["role_id", "permission_id"]
  end
end
