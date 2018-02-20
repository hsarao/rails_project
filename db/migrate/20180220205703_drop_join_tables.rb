class DropJoinTables < ActiveRecord::Migration[5.1]
  def up
    drop_table :series_round_joins;
    drop_table :series_rounds;
    drop_table :match_teams;
    drop_table :round_teams;
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
