class CreatePermissionsUsersJoin < ActiveRecord::Migration
  def change
    create_table :permissions_users, :id => false do |t|
      t.integer "permission_id"
      t.integer "user_id"
    end
    add_index :permissions_users, ["permission_id", "user_id"]
  end
end
