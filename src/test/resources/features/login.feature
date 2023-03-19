
Feature: Login Functionality

  User Story : As a user, I should be able to log in so that I can land on homepage.
Background:
  Given user is on the login page

@FIX10-337 @wip
Scenario Outline: Users can log in with valid credentials
    When user enters valid "<username>" into username input box
    And user enters valid password into "posmanager" password input box
    And user clicks Log in button
    Then user land on the home page



    Examples:
      | username                |
      | posmanager15@info.com   |
      | posmanager16@info.com   |
      | salesmanager15@info.com |
      | salesmanager16@info.com |
      | posmanager65@info.com   |


  @FIX10-338 @wip
    Scenario Outline: Verify 'Wrong login/password' should be displayed for invalid credentials
    Given user opens a browser and goes to login page
    When user enters invalid "<username>" or invalid "<password>"
    And user clicks Log in button
    Then Wrong login password message should be displayed

    Examples:
      | username                 | password      |
      | salesmanager15@gmail.com | 12345retygfht |
      | student80@info.com       | posmanager    |
      | teacher22@info.com       | salesmanager  |
      | posmanager100@info.com   | manager100    |


  @FIX10-339 @wip
  Scenario Outline: Verify 'Please fill out this field' is displayed for empty credentials
    Given user opens a browser and goes to login page
    When user does not enter "<username>" or "<password>"
    And user clicks Log in button
    Then Please fill out this field message should be displayed

    Examples:
      | username                 | password   |
      | salesmanager15@gmail.com |            |
      |                          | posmanager |
      |                          |            |

     @FIX10-340 @wip
    Scenario Outline: Verify the 'Enter' key works correctly on the login page
    Given user opens a browser and goes to login page
    When user enters valid "<username>" into username input box
    And user enters valid "<password>" password input box
    And user clicks on the enter key on keyboard
    Then user land on the home page
    Examples:
      | username                | password     |
      | posmanager10@info.com   | posmanager   |
      | salesmanager10@info.com | salesmanager |

  @FIX10-341 @wip
  Scenario Outline: Verify user should see the password in bullet signs by default
    Given user opens a browser and goes to login page
    When user enters valid "<username>" into username input box
    And user enters valid "<password>" password input box
    Then user should see password in bullet signs

    Examples:
      | username                | password     |
      | posmanager10@info.com   | posmanager   |
      | salesmanager10@info.com | salesmanager |
