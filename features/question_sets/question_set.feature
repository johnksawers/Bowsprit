Feature: QuestionSets
  In order to find product-market fit
  A user
  Should be able to create and manage QuestionSets

  Scenario: View QuestionSets
    Given I am logged in
    And I have no QuestionSets
    When I visit my dashboard
    Then I should see the no interviews message