class Event < ApplicationRecord
  validates :names, presence: true
  validates :description, presence: true

  belongs_to :user
  belongs_to :location
  belongs_to :organizer, class_name: "User"
end
