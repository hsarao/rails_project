class CreateMatchesInRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :matches_in_rounds do |t|
      t.references :round, foreign_key: true
      t.references :match, foreign_key: true

      t.timestamps
    end
  end
end
