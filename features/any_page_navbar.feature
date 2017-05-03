# features/any_page_navbar.feature
Feature: Navbar shown
Scenario: Viewing application's pages
    When I am on any page
    Then I expect to see the navbar 