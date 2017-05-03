require 'rails_helper'

feature "signing in but failing" do

    
    def fill_in_signin_fields
        fill_in "Email", with: ""
        fill_in "Password", with: ""
        click_button "Log in"
    end 
    
    scenario "visiting the site to sign in" do
        visit root_path
        click_link "LOGIN"
        fill_in_signin_fields
        expect(page).to have_content("Invalid Email or password")
    end 
end
