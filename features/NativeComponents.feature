Feature: Native Components
  As a Device Farm user
  I would like to be able to see examples of testing native components
  So I can apply it to my future tests.

  Background: Navigate to the Native Component Category
    Given that I navigate to the "Native Components" menu category
    And I am on the Native Component Page

  Scenario: Image Gallery
    When I swipe to the "Image Collection" tab
    Then I should see the image gallery grid
    And I take a screenshot

  Scenario: Scroll View
    When I swipe to the "Content Scrolling" tab
    Then I should see a scrollview
    And I scroll down
    And I take a screenshot

  Scenario: Media Player
    When I swipe to the "Video Player" tab
    Then I should see a movie playing
    And I take a screenshot

  Scenario: Camera
    When I swipe to the "Camera" tab
    Then I should see a camera preview
    And I take a screenshot

  Scenario: Out of View Content
    When I swipe to the "Content Out of View" tab
    Then I should scroll to see "This is hidden text"
    And I take a screenshot
