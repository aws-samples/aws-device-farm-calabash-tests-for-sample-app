Feature: Nested
  As a Device Farm user
  I would like to be able to see examples of testing nested views
  So I can apply it to my future tests.

  Background: Navigate to Nested View
    Given that I navigate to the "Nested Views" menu category
    And I am on the Nested View Page

  Scenario: Up Navigation
    When I press the "Up Navigation" button
    Then I should see text containing "Press to go to the next level"
    When I press the "Next Level" button
    Then I should see text containing "Final level"
    When I navigate up
    Then I should see text containing "Press to go to the next level"
    And I take a screenshot

  Scenario: Back Navigation
    When I press the "Back Navigation" button
    Then I should see text containing "1"
    When I press the Next Level button 10 times
    Then I should see text containing "11"
    When I press the back button 4 times
    Then I should see text containing "7"
    And I take a screenshot