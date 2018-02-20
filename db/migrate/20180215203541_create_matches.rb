class CreateMatches < ActiveRecord::Migration[5.1]
  def change
    create_table :matches do |t|
      t.date :date
      t.integer :score1
      t.integer :score2

      t.timestamps
    end
  end
end
