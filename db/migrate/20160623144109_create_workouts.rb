class CreateWorkouts < ActiveRecord::Migration
  def change
    create_table :workouts do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.string :cardio_desc, null: false
      t.date :cardio_date, null: false
      t.integer :cardio_duration
      t.float :cardio_distance
      t.text :cardio_notes
      t.timestamps null: true
    end
  end
end
