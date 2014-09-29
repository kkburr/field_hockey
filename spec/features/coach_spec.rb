require 'spec_helper'

feature 'Coaches do things' do

	scenario 'Coach signs up' do
		pending 
		visit root_path
		click_link 'I want to coach'
		expect(page).to have_content 'New Coach'
	end

	given(:coach_one) { Coach.make(:email => 'coach_one@example.com', :password => 'chuknow') } 

	background do
		# visit '/sessions/new'
		fill_in 'Email', :with => coach_one.email
		fill_in 'Password', :with => coach_one.password
	end

	scenario 'Coach signs in' do
		expect(page).to have_content('Signed In!')
	end

	scenario 'Coach views programs' do
	end

	scenario 'Coach views families of a program' do
	end

	scenario 'Coach can email families' do
	end

	scenario 'Coach views coaching families of a program' do
	end

	scenario 'Coach views players of a program' do
	end

	scenario 'Coach can add teams' do
	end

	scenario 'Coach views teams' do
	end

	scenario 'Coach can assign a coach to a team' do
	end

	scenario 'Coach can email all related to a program' do
	end

	scenario 'Coach can text all related to a program' do
	end

end
