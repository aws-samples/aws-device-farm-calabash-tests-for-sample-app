@hybrid
Feature: Hybrid Web View
  As a Device Farm user
  I would like to be able to see examples of testing a hybrid web view
  So I can apply it to my future tests.

  Background: Navigate to the local WebView
    Given that I navigate to the "Local Web View" menu category
    And I am on the Local Web View Page

  Scenario Outline: Input Name
    When I replace the first name with "<city_name>"
    And I replace the last name with "<area_name>"
    Then the name should be "<full_name>"
    Examples:
      |city_name   | area_name    | full_name            |
      |Montreal    |Quebec        | Montreal Quebec      |
      |Seattle     |Washington    | Seattle Washington   |
      |Portland    |Oregon        | Portland Oregon      |
      |Miami       |Florida       | Miami Florida        |