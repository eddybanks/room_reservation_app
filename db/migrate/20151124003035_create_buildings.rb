class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string :name
      t.integer :num_of_rooms

      t.timestamps null: false
    end
  end
end
