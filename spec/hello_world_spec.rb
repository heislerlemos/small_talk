require "rails_helper"

RSpec.describe 'Hello World', type: :feature do  
	scenario  'index page' do 
		visit root_path
		fill_in 'Email', with: 'heisler.lemos@ita.co.ao'
		fill_in 'Password', with: '************'
		click_button 
		


		expect(page).to have_content('welcome to small talk')
		

	end
end		 	