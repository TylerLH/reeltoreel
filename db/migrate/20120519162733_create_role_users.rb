class CreateRoleUsers < ActiveRecord::Migration
  def change
    create_table :role_users do |t|
      t.integer :user_id
      t.integer :role_id

    end
    add_index :role_users, :user_id
    add_index :role_users, :role_id
  end
end
