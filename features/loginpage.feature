Feature: Login Page
  As a Device Farm user
  I would like to be able to see examples of testing a login page
  So I can apply it to my future tests.

  Background: Navigate to Login Page
    Given that I navigate to the "Login Page" menu category
    And I am on the Login Page
    Then I should see the login fields
    And I should see the login button

  Scenario: Login Successfully
    When I type valid login credentials
    And I press the "Login" button
    Then I should see the login message "You are logged on as admin"
    And I should see the logout button with text "LOGOUT"
    And I take a screenshot
    When I press the "Logout" button
    Then I should see the login fields
    And I should see the login button

  Scenario: Login Fail
    When I type invalid login credentials
    And I press the "Login" button
    Then I should see the error message "You gave me the wrong username and password"
    And I should see the try again button with text "TRY AGAIN"
    And I take a screenshot
    When I press the "Try Again" button
    Then I should see the login fields
    And I should see the login button
