class CreateLocations < ActiveRecord::Migration[5.2]
  def change
    create_table :locations do |t|
      t.string :name, null: false
      t.string :country, null: false
      t.string :address, null: false
      t.text :description

      t.timestamps
    end
  end
end
