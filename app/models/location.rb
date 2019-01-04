class Location < ApplicationRecord
  validates :name, presence: true
  validates :address, pressence: true
  validates :country, presence: true

  has_many :events
end
