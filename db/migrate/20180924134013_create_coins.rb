class CreateCoins < ActiveRecord::Migration
  def change
    create_table :coins do |t|
      t.string :description
      t.string :acronym
      t.string :url_image

      t.timestamps null: false
    end
  end
end
