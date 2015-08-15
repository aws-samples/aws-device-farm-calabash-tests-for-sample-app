Feature: Alert Page
  As a Device Farm user
  I would like to be able to see examples of testing alerts
  So I can apply it to my future tests.

  Background: Navigate to Alert Page
    Given that I navigate to the "Alerts" menu category
    And I am on the Alerts Page

  Scenario: Toast
    When I press the "Toast" button
    Then I should see the toast
    And I take a screenshot

  Scenario: Alert
    When I press the "Alert" button
    Then I should see the alert Message
    And I take a screenshot
    When I press the "OK" button
    Then I should not see the alert Message