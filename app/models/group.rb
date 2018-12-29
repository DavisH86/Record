class Group < ApplicationRecord
  validates :names, presence: true

  has_many :events

end
