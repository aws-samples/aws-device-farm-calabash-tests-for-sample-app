Feature: Fixtures
  As a Device Farm user
  I would like to be able to see examples of testing Device Farm's fixtures
  So I can apply it to my future tests.

  Background: Navigate to the fixtures page
    Given that I navigate to the "Fixtures" menu category
    And I am on the Fixtures Page
    And I take a screenshot

  Scenario: Check if the wifi matches inputted Radio State
    Then I check if wifi is "true"

  Scenario: Check if the bluetooth matches inputted Radio State
    Then I check if the bluetooth is "true"

  Scenario: Check if GPS matches inputted Radio State
    Then I check if the GPS is "true"

  Scenario: Check if NFC matches inputted Radio State
    Then I check if the NFC is "true"
