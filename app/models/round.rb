class Round < ApplicationRecord
  validates :name, presence: true
  has_many :matches_in_rounds
  has_many :matches, through: :teams_playing_matches
end
