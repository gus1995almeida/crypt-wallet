class CreateMiningTypes < ActiveRecord::Migration
  def change
    create_table :mining_types do |t|
      t.string :description
      t.string :acronym

      t.timestamps null: false
    end
  end
end
