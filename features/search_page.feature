Feature: Search for cucumber

As a User
I want to be able to carry out a search on google for an item

Scenario: Search for an item
  Given I am on the google page
  When I enter in a search word cucumber
  Then I should see a search page results
  And the search results titles shoud contain the word cucumber
  And the search results description should contain the word cucumber 