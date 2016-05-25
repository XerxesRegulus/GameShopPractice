class CreateExpansions < ActiveRecord::Migration[5.0]
  def change
    create_table :expansions do |t|

      t.timestamps
    end
  end
end
