class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|
      t.string :name, null: false
      t.string :description, null: false
      t.integer :organizer_id
      t.datetime :event_date
      t.belongs_to :user
      t.belongs_to :location
      t.belongs_to :group

      t.timestamps
    end
  end
end
