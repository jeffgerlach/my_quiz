class CreateMovements < ActiveRecord::Migration
  def change
    create_table :movements do |t|
    	t.string :movement_name
    	t.string :movement_category

      t.timestamps
    end
  end
end
