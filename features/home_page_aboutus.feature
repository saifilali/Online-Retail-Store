# features/home_page_aboutus.feature
Feature: Home page to About Us
Scenario: Viewing application's home page
    Given I am on the homepage
    When I click on the About Us link
    Then I expect to see the About Us page