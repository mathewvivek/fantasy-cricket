class AddBatFieldsToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :bat_fours, :integer, :default => 0
    add_column :players, :bat_sixes, :integer, :default => 0
  end
end
