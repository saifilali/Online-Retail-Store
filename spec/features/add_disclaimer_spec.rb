require 'rails_helper'

feature "adding disclaimer" do
    
    def fill_in_signin_fields
        fill_in "Email", with: "aggiemomboots@gmail.com"
        fill_in "Password", with: "iloveaggies"
        click_button "Log in"
    end 
    
    scenario "logging in, adding a disclaimer, then viewing it" do
        visit root_path
        click_link "LOGIN"
        fill_in_signin_fields
        expect(page).to have_content("HOME ABOUT FAQ GALLERY PRODUCT ADMIN LOGOUT")
        click_link "ADMIN"
        click_link "Add Disclaimer"
        click_link "New Disclaimer"
        fill_in "Message", with: "Hello we are out of boots"
        select 'About', from: "Page to appear on"
        click_button "Submit"
        expect(page).to have_content("Disclaimer was successfully created.")
        click_link "ABOUT"
        expect(page).to have_content("Disclaimer")
        expect(page).to have_content("Hello we are out of boots")
    end 
end