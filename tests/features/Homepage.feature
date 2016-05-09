@api
  Feature: The homepage displays appropriate content.

  Scenario: An anonymous user views the homepage.
    Given I am an anonymous user
    When I visit "/"
    Then I should see "Welcome to mysite"
    And I should not see "Add Content"

  Scenario: An admin user views the hompagee.
    Given I am logged in as a user with the "administrator" role
    When I visit "/"
    Then I should see " Welcome to mysite"
    And I should see "Add Content"
