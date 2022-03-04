Feature: Facebook Sign-up

Scenario: Sign-up page should be visible
   Given I launch facebook URL
    When I enter correct email and password and login
    Then I should see home page
