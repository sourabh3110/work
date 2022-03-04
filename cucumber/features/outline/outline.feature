Feature: Facebook Sign-up

  Scenario Outline: Sign-up page should be visible
    Given I launch facebook URL
    When I enter <email> and <password> and login
    Then I should see home page

    Examples:
      | Email                            | password     |
      | "tyler_kgiyzep_durden@tfbnw.net" | "pass@123"   |
      | "8817882917"                     | "8817882917" |

# Scenario Outline: Log in with valid data
#    Given I am on the Sign up Form
#     When I provide <Email>
#      And I provide Confirm <СEmail>
#      And I provide <Password>
#      And I provide Confirm <СPassword>
#      And I click on Register button
#     Then I registered to the site