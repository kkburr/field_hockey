class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.integer :contact_type
      t.string :current_school
      t.integer :current_grade
      t.datetime :birthdate
      t.integer :played_before 
      t.integer :played_other_sport
      t.string :other_sport
      t.string :allergies

      t.timestamps
    end
  end
end
