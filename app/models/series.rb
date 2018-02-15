class Series < ApplicationRecord
  has_many :SeriesRound
  has_many :rounds, through: SeriesRound
end
