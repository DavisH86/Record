class Location < ApplicationRecord
  validates :name, presence: true
  validates :address, pressence: true

  has_many :events 
end
