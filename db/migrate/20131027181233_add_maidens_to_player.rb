class AddMaidensToPlayer < ActiveRecord::Migration
  def change
    add_column :players, :bowl_maidens, :integer, :default => 0
  end
end
