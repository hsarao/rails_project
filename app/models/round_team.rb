class RoundTeam < ApplicationRecord
  belongs_to :round
  belongs_to :match
end