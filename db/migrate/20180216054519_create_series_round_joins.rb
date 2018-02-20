class CreateSeriesRoundJoins < ActiveRecord::Migration[5.1]
  def change
    create_table :series_round_joins do |t|
      t.references :series, foreign_key: true
      t.references :round, foreign_key: true

      t.timestamps
    end
  end
end
