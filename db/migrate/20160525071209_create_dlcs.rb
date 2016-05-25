class CreateDlcs < ActiveRecord::Migration[5.0]
  def change
    create_table :dlcs do |t|
      t.string :title
      t.text :description
      t.text :short_description
      t.integer :game_id
      t.string :type
      t.decimal :price

      t.timestamps
    end
  end
end
