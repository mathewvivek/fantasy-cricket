class AddPlayerScoresToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :bat_score, :integer, :default => 0
    add_column :players, :bowl_score, :integer, :default => 0
    add_column :players, :field_score, :integer, :default => 0
    add_column :players, :bonus, :integer, :default => 0
    add_column :players, :bat_avg, :float, :default => 0
    add_column :players, :bowl_avg, :float, :default => 0
  end
end
