class AddLsPriceToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :ls_price, :integer, :default => 0
  end
end
