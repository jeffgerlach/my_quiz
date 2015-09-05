class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|

    	t.date :wod_date
    	t.string :timecap
    	t.integer :rounds
    	t.text :wod_listing

      t.timestamps
    end
  end
end
