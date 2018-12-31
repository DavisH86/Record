class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.belongs_to :user
      t.belongs_to :location
      t.datetime :startDate
      t.datetime :endDate

      t.timestamps
    end
  end
end
