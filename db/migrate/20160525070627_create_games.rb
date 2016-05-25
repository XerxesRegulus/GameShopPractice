class CreateGames < ActiveRecord::Migration[5.0]
  def change
    create_table :games do |t|
      t.string :title
      t.text :description
      t.text :short_description
      t.decimal :price

      t.timestamps
    end
  end
end
