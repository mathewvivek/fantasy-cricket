class AddTsKeeperDecrementToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :ts_keeper_decrement, :integer, :default => 0
  end
end
