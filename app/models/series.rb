class Series < ApplicationRecord
  has_many :rounds_in_series
  has_many :rounds, through: :rounds_in_series
end
