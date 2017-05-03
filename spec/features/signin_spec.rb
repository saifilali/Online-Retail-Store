require 'rails_helper'

feature "signing in" do
    
    def fill_in_signin_fields
        fill_in "Email", with: "aggiemomboots@gmail.com"
        fill_in "Password", with: "iloveaggies"
        click_button "Log in"
    end 
    
    scenario "visiting the site to sign in" do
        visit root_path
        click_link "LOGIN"
        fill_in_signin_fields
        expect(page).to have_content("HOME ABOUT FAQ GALLERY PRODUCT ADMIN LOGOUT")
    end 
end