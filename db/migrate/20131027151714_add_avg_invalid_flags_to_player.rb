class AddAvgInvalidFlagsToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :bat_avg_invalid, :boolean, :default => 0
    add_column :players, :bowl_avg_invalid, :boolean, :default => 0
  end
end
