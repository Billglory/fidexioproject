@FIX10-257
Feature: Logout function
  As a user, I should be able to log out.

  Background:
    Given user opens a browser and goes to login page
    And user logs in and on the home page

  Scenario:User can log out and ends up in login page
    When User clicks profile name
    And User clicks the Log out button.
    Then User lands on the login page

  Scenario: The user can not go to the home page again by clicking the step back button after successfully logged out.
    When User clicks profile name
    And User clicks the Log out button.
    And User lands on the login page
    And User clicks go back button on login page
    Then User can not access the home page again