class CreateMods < ActiveRecord::Migration[5.0]
  def change
    create_table :mods do |t|
      t.string :title
      t.text :description
      t.text :short_description
      t.integer :game_id
      
      t.timestamps
    end
  end
end
