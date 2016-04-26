Feature: Search and filter users
    As a user, 
    I want to be able to search and filter buddies, 
    so that I can find buddies to talk to.

Background:
  
    Given the following Users exist:
    | username     | email              | password    |
    | user1        | user1@berkeley.edu | password1   |
    | user2        | user2@berkeley.edu | password2   |
    | user3        | user3@berkeley.edu | password3   |
     
    And I am on the search page
    And I am logged in as user1@berkeley.edu with password1

Scenario: Search for everyone
    When I uncheck all checkboxes
    And I press "Save"
    Then I should see "user2"
    And I should see "user3"

Scenario: Search for age 20
  When I check "20" in "Age"
  And I press "Save"
  Then I should see "user2"
  And I should not see "user3"
  
Scenario: Search for female
  When I check "Female" in "Gender"
  And I press "Save"
  Then I should see "user2"
  And I should see "user3"
  
Scenario: Search for male
  When I check "Male" in "Gender"
  And I press "Save"
  Then I should not see "user2"
  And I should not see "user3"
  
  