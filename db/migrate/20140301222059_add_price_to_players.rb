class AddPriceToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :price, :integer, :default => 0
  end
end
