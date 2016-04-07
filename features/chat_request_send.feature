Feature: Send a chat request

    As a user 
    I want to be able to send chat requests to other users
    So that I can have conversations with other users.

Background:
  
    Given the following Users exist:
    
    | username     | email              | password    |
    | user1        | user1@berkeley.edu | password1   |
    | user2        | user2@berkeley.edu | password2   |

    And I am logged in as user1@berkeley.edu with password1

Scenario: Send a chat request to user2 and user2 is not a buddy
    Given I am on the search page
    And I am not friends with user2
    When I press "Add user2"
    Then I should see "Sent request"

Scenario: Chat request not pending to user2 and user2 is a buddy
    Given I am on the chat page
    And I press "user2"
    Then I should not see "Chat Request Pending"
    
    Scenario: Chat request pending to user2
    Given I am on the chat page
    And I press "user2"
    Then I should see "Chat Request Pending"

 
