class Team < ApplicationRecord
  has_many :teams_playing_matches
  has_many :matches, through: :teams_playing_matches
end
