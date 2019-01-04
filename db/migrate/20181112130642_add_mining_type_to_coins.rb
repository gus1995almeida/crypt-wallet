class AddMiningTypeToCoins < ActiveRecord::Migration
  def change
    add_reference :coins, :mining_type, index: true, foreign_key: true
  end
end
