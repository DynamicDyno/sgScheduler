class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :desc
      t.string :bed
      t.string :name

      t.timestamps
    end
  end
end
