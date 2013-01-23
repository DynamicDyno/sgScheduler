class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username
      t.string :crypted_pass
      t.string :email

      t.timestamps
    end
  end
end
