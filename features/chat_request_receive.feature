Feature: Receive a chat request

    As a user 
    I want to be able to receive chat requests to other users
    So that I can know if other users want to chat with me.

Background:
  
    Given the following Users exist:
    
    | username     | email              | password    |
    | user1        | user1@berkeley.edu | password1   |
    | user2        | user2@berkeley.edu | password2   |

    And I am logged in as user2@berkeley.edu with password2

Scenario: Receive a chat request from user1
    Given I am on the chat page
    And I am not friends with user1
    When I press "user1"
    Then I should see "Chat Request"

Scenario: Accept chat request from user1
    Given I am in a chat with user1
    When I press "Accept"
    Then I should see "Start a conversation with user1"
    
    Scenario: Reject chat request from user1
    Given I am in a chat with user1
    When I press "Reject"
    And I follow "Chat"
    Then I should not see "user1"

 
