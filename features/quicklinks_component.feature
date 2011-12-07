Feature: Quicklinks component
  In order to to promote sections of the site
  as a website editor
  I want to add lists of links to the page

  @javascript
  Scenario: Add quick links component
    Given I am editing content
    And place a "Quick Links" component in a slot
    And add a few links
    When I view the content
    Then I should see a list of the links in the slot