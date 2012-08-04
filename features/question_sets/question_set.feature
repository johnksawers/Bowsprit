Feature: Scripts
  In order to find product-market fit
  A user
  Should be able to create and manage Scripts

  Scenario: No Scripts
    Given I am logged in
    And I have no Scripts
    When I visit my dashboard
    Then I should see the no interviews message

  Scenario: 1 Script
    Given I am logged in
    And I have a Script
    When I visit my dashboard
    Then I should see the Script listed