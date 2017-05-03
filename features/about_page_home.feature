# features/about_page_home.feature
Feature: About Us page to Home page
Scenario: Viewing application's about page
    Given I am on the About Us page
    When I click on the Home link
    Then I expect to see the Home page
