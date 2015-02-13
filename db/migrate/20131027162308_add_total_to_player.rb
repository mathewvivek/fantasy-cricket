class AddTotalToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :total, :integer, :default => 0
  end
end
