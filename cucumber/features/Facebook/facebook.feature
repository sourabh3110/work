Feature: Facebook Sign-up

  Background: Turn-on simultanious subscription and Deny if already recurring subscription present toggle
    Given Setting Up the environment

  Scenario: Sign-up page should be visible
    Given I launch facebook URL
    When I enter correct email and password and login
    Then I should see home page
