Feature: QuestionSets
  In order to find product-market fit
  A user
  Should be able to create and manage QuestionSets

  Scenario: No QuestionSets
    Given I am logged in
    And I have no QuestionSets
    When I visit my dashboard
    Then I should see the no interviews message

  Scenario: 1 QuestionSet
    Given I am logged in
    And I have a QuestionSet
    When I visit my dashboard
    Then I should see the QuestionSet listed