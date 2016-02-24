class CreatePlanas < ActiveRecord::Migration
  def change
    create_table :planas do |t|
      t.integer :week
      t.integer :wkday
      t.integer :exercise_id

      t.timestamps null: false
    end
  end
end
