require "rails_helper"

RSpec.describe 'Hello World', type: :feature do  
	scenario  'index page' do 
		visit root_path
		expect(page).to have_content('welcome to small talk')
		

	end
end		 	