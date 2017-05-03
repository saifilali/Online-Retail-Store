require 'rails_helper'

feature "adding review" do
    
    def fill_in_signin_fields
        fill_in "Email", with: "aggiemomboots@gmail.com"
        fill_in "Password", with: "iloveaggies"
        click_button "Log in"
    end 
    
    scenario "logging in, adding a review, then going to the product's page to view it" do
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
        click_link "PRODUCT"
        expect(page).to have_content("u wot m8")
        expect(page).to have_content("xD")
    end 
end