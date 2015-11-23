class CreateBuildings < ActiveRecord::Migration
  def change
    create_table :buildings do |t|
      t.string    :name,            null: false
      t.integer   :num_of_rooms,    null: false, default: 10
      t.string    :location

      t.timestamps null: false
    end

    add_index :buildings, :name
    
  end
end
