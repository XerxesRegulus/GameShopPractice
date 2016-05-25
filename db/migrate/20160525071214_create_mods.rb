class CreateMods < ActiveRecord::Migration[5.0]
  def change
    create_table :mods do |t|

      t.timestamps
    end
  end
end
