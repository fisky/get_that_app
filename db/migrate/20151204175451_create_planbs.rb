class CreatePlanbs < ActiveRecord::Migration
  def change
    create_table :planbs do |t|
      t.integer :week
      t.integer :wkday
      t.integer :exercise_id

      t.timestamps null: false
    end
  end
end
