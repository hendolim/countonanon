Feature: Real time chatting with a buddy
    As a user 
    I want to be able to chat in real-time fashion
    So that I can communicate without refreshing the page

Background:
  
    Given the following Users exist:
    
    | username     | email              | password    |
    | user1        | user1@berkeley.edu | password1   |
    | user2        | user2@berkeley.edu | password2   |
    | user3        | user3@berkeley.edu | password3   |

Scenario: Correctly chat with certain user
    When I am in user2 browser
    Then I am logged in as user2@berkeley.edu with password2
    When I am in user1 browser
    Then I am logged in as user1@berkeley.edu with password1
    And I follow "user2"
    When I fill in "message_body" with "Hi user2" 
    And I press "Send"
    Then I am in user2 browser
    Then I should see "Hi user2"

Scenario: Chat with wrong user
    When I am in user3 browser
    Then I am logged in as user3@berkeley.edu with password2
    When I am in user1 browser
    Then I am logged in as user1@berkeley.edu with password1
    And I follow "user2"
    When I fill in "message_body" with "Hi user2" 
    And I press "Send"
    Then I am in user3 browser
    Then I should not see "Hi user2"