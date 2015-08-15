Feature: Web View
  As a Device Farm user
  I would like to be able to see examples of testing a web view
  So I can apply it to my future tests.

  Background: Navigate to Web View
    Given that I navigate to the "Web" menu category
    And I am on the WebView Page

  Scenario: Navigate to Google
    When I input "http://www.google.com" into the navigation bar
    And I enter the url
    Then I should get a loaded webpage with "www.google.com" as the content description
    And I take a screenshot

  Scenario: Input a bad URL
    When I input "a bad url string" into the navigation bar
    And I enter the url
    Then I should see a error message
    And I take a screenshot
