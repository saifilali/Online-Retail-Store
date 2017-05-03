# features/home_page_welcome.feature
Feature: Home page welcome
Scenario: Viewing application's home page
    When I am on the "Home" page
    Then I expect to see the "Welcome to the Boot Site" message