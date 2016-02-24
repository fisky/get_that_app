class CreatePlancs < ActiveRecord::Migration
  def change
    create_table :plancs do |t|
      t.integer :week
      t.integer :wkday
      t.integer :exercise_id

      t.timestamps null: false
    end
  end
end
