Feature: Custom ADB Command
  As a Device Farm user
  I would like to be able to run custom adb commands
  So I can use it for my future tests.

  Scenario: Get ADB Version
    Given I am using a Android device
    Then I get the ADB version
