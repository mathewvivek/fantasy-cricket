class AddTsIncrementToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :ts_increment, :integer, :default => 0
  end
end
