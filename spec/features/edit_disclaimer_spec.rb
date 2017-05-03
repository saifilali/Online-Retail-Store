require 'rails_helper'

feature "editing disclaimer" do
    
    def fill_in_signin_fields
        fill_in "Email", with: "aggiemomboots@gmail.com"
        fill_in "Password", with: "iloveaggies"
        click_button "Log in"
    end 
    
    scenario "logging in, adding a disclaimer, then editing it, then viewing it" do
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
        click_link "Back"
        click_link "Edit"
        fill_in "Message", with: "Hello we have more boots"
        select 'FAQ', from: "Page to appear on"
        click_button "Submit"
        expect(page).to have_content("Disclaimer was successfully updated.")
        click_link "FAQ"
        expect(page).to have_content("Hello we have more boots")
    end 
end