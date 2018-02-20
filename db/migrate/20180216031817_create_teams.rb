class CreateTeams < ActiveRecord::Migration[5.1]
  def change
    create_table :teams do |t|
      t.string :key
      t.string :name
      t.string :code

      t.timestamps
    end
  end
end
