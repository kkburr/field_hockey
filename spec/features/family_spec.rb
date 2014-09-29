require 'spec_helper'
# https://github.com/jnicklas/capybara

feature 'Families do things' do

	scenario 'Family signs up' do
	 	visit root_path
	 	click_link 'here'
	 	expect(page).to have_content 'New family'
	end

	scenario 'Family signs up as a coach' do
		pending
		visit root_path
	 	click_link 'here'
	end

	given(:family_one) { Family.make(:email => 'family_one@example.com', :password => 'chuknow') }

	background do
		# visit '/sessions/new'
		within('#sessions') do
			fill_in 'Email', :with => family_one.email
			fill_in 'Password', :with => family_one.password
		end
		click_button 'Sign in'
	end

	scenario 'Family signs in' do
		pending
		expect(page).to have_content('Signed In!')
	end

	scenario 'Family changes its coaching status' do
	end

	scenario 'Family adds player' do
	end

	scenario 'Family updates player' do
	end

	scenario 'Family deletes player' do
	end

	scenario 'Family adds program' do
	end
	
end