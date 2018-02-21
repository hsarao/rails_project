class Match < ApplicationRecord
  validates :date, presence: true
  has_many :teams_playing_matches
  has_many :teams, through: :teams_playing_matches
  has_many :matches_in_rounds
  has_many :round, through: :matches_in_rounds
end
