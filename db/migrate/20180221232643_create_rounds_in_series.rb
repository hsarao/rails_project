class CreateRoundsInSeries < ActiveRecord::Migration[5.1]
  def change
    create_table :rounds_in_series do |t|
      t.references :round, foreign_key: true
      t.references :series, foreign_key: true

      t.timestamps
    end
  end
end
