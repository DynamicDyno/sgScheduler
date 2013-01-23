class MyNewMigration < ActiveRecord::Migration
  def up
	add_column :users,:password_digest, :string
	remove_column :users,:crypted_pass, :string
	remove_column :users,:password_confirmation, :string
  end

  def down

  end
end
