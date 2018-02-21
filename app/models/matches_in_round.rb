class MatchesInRound < ApplicationRecord
  belongs_to :round
  belongs_to :match
end
