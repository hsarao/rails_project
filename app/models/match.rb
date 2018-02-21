class Match < ApplicationRecord
  validates :date, presence: true
  has_many :teams_playing_matches
  has_many :teams, through: :teams_playing_matches
end
