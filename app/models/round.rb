class Round < ApplicationRecord
  validates :name, presence: true
  has_many :matches_in_rounds
  has_many :matches, through: :matches_in_rounds
  has_many :rounds_in_series
  has_many :series, through: :rounds_in_series
end
