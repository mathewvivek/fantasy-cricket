class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :name
      t.string :age_category
      t.integer :bat_innings, :default => 0
      t.integer :bat_runs_scored, :default => 0
      t.integer :bat_fifties, :default => 0
      t.integer :bat_hundreds, :default => 0
      t.integer :bat_ducks, :default => 0
      t.integer :bat_not_outs, :default => 0
      t.integer :bowl_overs, :default => 0
      t.integer :bowl_runs, :default => 0
      t.integer :bowl_wickets, :default => 0
      t.integer :bowl_4_wickets, :default => 0
      t.integer :bowl_6_wickets, :default => 0
      t.integer :field_catches, :default => 0
      t.integer :field_runouts, :default => 0
      t.integer :field_stumpings, :default => 0
      t.integer :field_drops, :default => 0
      t.integer :field_mom, :default => 0
      t.integer :team, :default => 1

      t.timestamps
    end
  end
end
