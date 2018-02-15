class Round < ApplicationRecord
  validates :name, presence: true
  has_one :series
end
