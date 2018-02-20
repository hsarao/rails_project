class Match < ApplicationRecord
  validates :date, presence: true
  has_many :match_teams
  has_many :teams, through: :match_teams
end
