Feature: Input Controls
  As a Device Farm user
  I would like to be able to see examples of testing input controls
  So I can apply it to my future tests.

  Background: Navigate to Input Controls
    Given that I navigate to the "Input Controls" menu category
    And I am on the Input Controls page

  Scenario: Text Field
    Given I swipe to the "Text Field" tab
    When I enter text "This is testing text 1234" into the input text field
    Then I should see the text "This is testing text 1234" in the input text field
    And I take a screenshot

  Scenario: Checkbox
    Given I swipe to the "Checkbox" tab
    When I check the checkbox
    Then I see the text "Checked"
    When I check the checkbox
    Then I see the text "Unchecked"
    And I take a screenshot

  Scenario: Radio Buttons
    Given I swipe to the "Radio Buttons" tab
    When I select the "Amazon" radio button
    Then I see the text "Amazon"
    When I select the "Web" radio button
    Then I see the text "Web"
    When I select the "Services" radio button
    Then I see the text "Services"
    And I take a screenshot

  Scenario: Switch Control
    Given I swipe to the "Toggle Button" tab
    When I switch the switch control
    Then I should see frame in the "ON" state
    When I switch the switch control
    Then I should see frame in the "OFF" state
    And I take a screenshot

  Scenario: Spinner Control
    Given I swipe to the "Spinner" tab
    When I select the item in the spinner at index 4
    Then I should see the display with index 4
    When I select the item in the spinner at index 2
    Then I should see the display with index 2
    And I take a screenshot

  Scenario: Pull to Refresh
    Given I swipe to the "Pull To Refresh" tab
    When I pull down on the screen
    Then I should see the current time
    And I take a screenshot

  Scenario: Time Picker
    Given I swipe to the "Time Picker" tab
    When I choose the time of the 8 hour and the 2 minute
    Then I should see "8 : 02"
    And I take a screenshot

  Scenario: Date Picker
    Given I swipe to the "Date Picker" tab
    When I choose the date 10 month, the 27 day, 2015 year
    Then I should see "10/27/2015"
    And I take a screenshot

  Scenario: Submit Button
    Given I swipe to the "Submit Button" tab
    When I press the submit button
    Then I should see the submitted action
    And I take a screenshot

  Scenario: Gestures
    Given I swipe to the "Gestures" tab
    When I do a fling gesture
    Then I should see "Fling" at the bottom of the display
    When I do a long touch gesture
    Then I should see "Long Press" at the bottom of the display
    When I do a Single Tap gesture
    Then I should see "Single tap confirmed" at the bottom of the display
    And I take a screenshot
