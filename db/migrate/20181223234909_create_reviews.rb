class CreateReviews < ActiveRecord::Migration[5.2]
  def change
    create_table :reviews do |t|
      t.text :body, null: false
      t.integer :rating, null: false
      t.belongs_to :user
      t.belongs_to :event
      t.belongs_to :location

      t.timestamps
    end
  end
end
