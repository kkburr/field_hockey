require 'spec_helper'

feature 'Admin does things' do
	background do
		Admin.make(:email=>'whatever@whatever.com', :password=>'capcap')
		# visit '/sessions/new'
		within('#sessions') do
			fill_in 'Email', :with => 'whatever@whatever.com'
			fill_in 'Password', :with => 'capcap'
		end
		click_button 'Sign in'
	end

	scenario 'Admin signs in' do
		expect(page).to have_content('Signed In!')
	end

	scenario 'Admin adds a coach' do
	end

	scenario 'Admin views coaches' do
	end

	scenario 'Admin exports all coach email addresses' do
	end

	scenario 'Admin deletes a coach' do
	end

	scenario 'Admin adds a Venue' do
	end

	scenario 'Admin views venues' do
	end

	scenario 'Admin edits a Venue' do
	end

	scenario 'Admin deletes a Venue' do
	end

	scenario 'Admin adds a program' do
	end

	scenario 'Admin views programs' do
	end

	scenario 'Admin edits a program' do
	end

	scenario 'Admin views families' do
	end

	scenario 'Admin can export all family email addresses' do
	end

	scenario 'Admin can view players' do
	end

	scenario 'Admin can export USAFH numbers' do
	end

end