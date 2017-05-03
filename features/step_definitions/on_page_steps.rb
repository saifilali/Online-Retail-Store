# features/step_definitions/on_page_steps.rb

#Given cases ------------------------------------------
Given(/^I am on the homepage$/) do
        visit welcome_index_path
end

Given(/^I am on the About Us page$/) do
        visit welcome_about_path
end

#When cases -------------------------------------------
When(/^I am on the "(.*?)" page$/) do |page_name|
    case page_name
    when "Home"
        visit welcome_index_path
    when "About Us"
        visit welcome_about_path
    when "FAQ"
        visit welcome_faq_path
    when "Gallery"
        visit welcome_gallery_path
    else
        # fail
    end
end

When(/^I am on any page/) do
        a = rand(4)
        case a
        when 0
            visit welcome_index_path
        when 1
            visit welcome_faq_path
        when 2
            visit welcome_about_path
        when 3 
            visit welcome_gallery_path
        else 
            visit welcome_index_path
        end
end 

When(/^I click on the About Us link$/) do 
        visit welcome_about_path
end

When(/^I click on the Home link$/) do 
        visit welcome_index_path
end

#Then cases -------------------------------------------
Then(/^I expect to see the "(.*?)" title/) do |page_title|
    expect(page.title).to eq page_title
end

Then(/^I expect to see the "(.*?)" message/) do |page|
    expect(page).to have_content("Welcome to the Boot Site")
end

Then(/^I expect to see the About Us page/) do
    expect(page.title).to eq "About Us"
    expect(page).to have_content "To start, we love Texas A&M!"
    expect(page).to have_content"Scholarships A great thing about our organization is that with every boot purchased proceeds will be used to provide scholarships!"
    expect(page).to have_content"Support As a club, we are here to support other Aggie Moms and our Aggies!"
    expect(page).to have_content"School Spirit Why else would you buy our products if it were not for the fact that our boots are made with the official logos engraved onto it so that you can represent your Aggies!"
    expect(page).to have_css("div:nth-child(1) > a:nth-child(4) > img:nth-child(1)")
    expect(page).to have_css("div:nth-child(1) > a:nth-child(5) > img:nth-child(1)")

end

Then(/^I expect to see the Home page/) do
        expect(page.title).to eq "Home Page"
        expect(page).to have_content"Aggie Mom Boots by the Parker County Aggie Moms' Club"
        expect(page).to have_content"Since 2005 our Aggie Moms' Club has been raising money for A&M student
        scholarships - every purchase of these boots serve that cause. Sold exclusively exclusively by the Parker
        County Aggie Moms since 2011, genuine leather is used to make these boots one-of-a-kind. Show off your
        Aggie Spirit whether you are at the game, a tailgate, or grabbing dinner at The Chicken - these genuine
        leather boots are truely Rough, Tough, Real Stuff! These boots are part of an Aggie Tradition, so don't
        wait to order! Thanks & Gig 'em!"
        expect(page).to have_css(".img-fluid")
end

Then(/^I expect to see the navbar$/) do
        expect(page).to have_css("nav")
end 

Then(/^I expect to see the aggie mom logo$/) do
    expect(page).to have_css(".navbar-brand > img:nth-child(1)")
    expect(page).to have_css("img[src*='/assets/logo_aggie_moms-9f3353702a2ffa13f034fb724ffe2e12c4b3aa1860561c27a9332b8485e4dd3a.png']")
end 

Then(/^I expect to see the FAQ questions$/) do
        expect(page).to have_content "How long will it take for my boots to get here?"
        expect(page).to have_content "It will take around 4-6 months for you to get your boots after payment."
        expect(page).to have_content "What sizes and styles are boots available in? 
        Sizes come in 5, 5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5, 10, and 10.5. Styles 
		include square toe and pointed toe. You can also get bling on the Aggie mom 
		logo."
        expect(page).to have_content "Where are the boots made?"
        expect(page).to have_content "All boots are made in Texas!"
end 

# the bottom feature has not been implemented
Then(/^I expect the html to have jumbotron$?/) do
        expect(page).to have_css(".jumbotron") 
end
