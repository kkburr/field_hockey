require 'spec_helper'

feature 'Families do things' do

	scenario 'A family signs up' do
	 	 visit root_path
	 	 click_link 'here'

	 	 expect(page).to have_content 'New family'
	end
	
end