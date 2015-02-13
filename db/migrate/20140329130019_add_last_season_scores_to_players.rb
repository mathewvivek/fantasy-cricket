class AddLastSeasonScoresToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :ls_bat_innings, :integer, :default => 0
    add_column :players, :ls_bat_runs_scored, :integer, :default => 0
    add_column :players, :ls_bat_fours, :integer, :default => 0
    add_column :players, :ls_bat_sixes, :integer, :default => 0
    add_column :players, :ls_bat_fifties, :integer, :default => 0
    add_column :players, :ls_bat_hundreds, :integer, :default => 0
    add_column :players, :ls_bat_ducks, :integer, :default => 0
    add_column :players, :ls_bat_not_outs, :integer, :default => 0
    add_column :players, :ls_bowl_overs, :integer, :default => 0
    add_column :players, :ls_bowl_runs, :integer, :default => 0
    add_column :players, :ls_bowl_wickets, :integer, :default => 0
    add_column :players, :ls_bowl_4_wickets, :integer, :default => 0
    add_column :players, :ls_bowl_6_wickets, :integer, :default => 0
    add_column :players, :ls_bowl_maidens, :integer, :default => 0
    add_column :players, :ls_field_catches, :integer, :default => 0
    add_column :players, :ls_field_runouts, :integer, :default => 0
    add_column :players, :ls_field_stumpings, :integer, :default => 0
    add_column :players, :ls_field_drops, :integer, :default => 0
    add_column :players, :ls_field_mom, :integer, :default => 0
    add_column :players, :ls_bat_score, :integer, :default => 0
    add_column :players, :ls_bowl_score, :integer, :default => 0
    add_column :players, :ls_field_score, :integer, :default => 0
    add_column :players, :ls_bonus, :integer, :default => 0
    add_column :players, :ls_total, :integer, :default => 0
    add_column :players, :ls_bat_avg, :float, :default => 0.0
    add_column :players, :ls_bowl_avg, :float, :default => 0.0
    add_column :players, :ls_bat_avg_invalid, :boolean
    add_column :players, :ls_bowl_avg_invalid, :boolean
  end
end
