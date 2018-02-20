class CreateSeriesRounds < ActiveRecord::Migration[5.1]
  def change
    create_table :series_rounds do |t|
      t.string :seriesreferences
      t.string :roundsreferences

      t.timestamps
    end
  end
end
