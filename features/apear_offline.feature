Feature: Show status of users
    As a user
    I want to be able to appear offline
    so that I can only talk to the buddies I want to.

Background:
  
    Given the following Users exist:
    | username     | email              | password    |
    | user1        | user1@berkeley.edu | password1   |
    | user2        | user2@berkeley.edu | password2   |

Scenario: A user1 is appearing offline
    Given I am in user1 browser
    And I am logged in as user1@berkeley.edu with password1
    And I follow "Chat"
    And I press "Appear offline"
    
    When I am in user2 browser
    And I am logged in as user2@berkeley.edu with password2
    And I follow "Chat"
    Then I should see "user1"
    And I should see "Offline"
    And I should not see "Online"