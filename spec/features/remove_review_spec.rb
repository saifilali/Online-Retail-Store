require 'rails_helper'

feature "removing review" do
    
    def fill_in_signin_fields
        fill_in "Email", with: "aggiemomboots@gmail.com"
        fill_in "Password", with: "iloveaggies"
        click_button "Log in"
    end 
    
    scenario "logging in, adding a review, then removing it" do
        visit root_path
        click_link "LOGIN"
        fill_in_signin_fields
        expect(page).to have_content("HOME ABOUT FAQ GALLERY PRODUCT ADMIN LOGOUT")
        click_link "ADMIN"
        click_link "Add Review"
        click_link "New Review"
        fill_in "Reviewer's Name", with: "u wot m8"
        fill_in "Comment", with: "xD"
        click_button "Submit"
        expect(page).to have_content("Review was successfully created.")
        click_link "Back"
        click_link "Destroy"
        expect(page).to have_content("Review was successfully destroyed.")
    end 
end