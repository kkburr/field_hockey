class CreateFamilies < ActiveRecord::Migration
  def change
    create_table :families do |t|
      t.string :parent_one_name
      t.string :parent_two_name
      t.string :email_one
      t.string :email_two
      t.string :region
      t.string :high_school

      t.timestamps
    end
  end
end
