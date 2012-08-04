Feature: Dashboard
  In order to conduct interviews
  A user
  Should be able to see Scripts

    Scenario: User is not signed up
      Given I do not exist as a user
      When I sign in with valid credentials
      Then I see an invalid login message
        And I should be signed out