class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.integer :grades
      t.string :description_short
      t.string :description_long
      t.string :location
      t.string :head_coach

      t.timestamps
    end
  end
end
