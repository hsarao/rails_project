require "application_system_test_case"

class TeamsTest < ApplicationSystemTestCase
  validates :key, :name, presence: true
end
