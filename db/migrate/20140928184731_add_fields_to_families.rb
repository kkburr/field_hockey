class AddFieldsToFamilies < ActiveRecord::Migration
  def change
  	remove_column :families, :parent_one_name, :string
  	remove_column :families, :parent_two_name, :string
  	remove_column :families, :email_one, :string
  	add_column :families, :parent_one_first_name, :string
  	add_column :families, :parent_one_last_name, :string
  	add_column :families, :parent_two_first_name, :string
  	add_column :families, :parent_two_last_name, :string
  	add_column :families, :phone, :integer
  	add_column :families, :coach, :integer
  end
end
