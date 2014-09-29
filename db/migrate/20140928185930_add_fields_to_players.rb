class AddFieldsToPlayers < ActiveRecord::Migration
  def change
  	remove_column :players, :contact_type, :integer
  	remove_column :players, :played_other_sport, :integer
  	remove_column :players, :email, :string
  	remove_column :players, :encrypted_password, :string
  	remove_column :players, :reset_password_token, :string
  	remove_column :players, :reset_password_sent_at, :datetime
  	remove_column :players, :remember_created_at, :datetime
  	remove_column :players, :sign_in_count, :integer
  	remove_column :players, :current_sign_in_at, :datetime
  	remove_column :players, :last_sign_in_at, :datetime
  	remove_column :players, :current_sign_in_ip, :string
  	remove_column :players, :last_sign_in_ip, :string
  	add_column :players, :usafh_number, :integer
  end
end
