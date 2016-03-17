Feature: Send a message to a buddy

    As a user 
    I want to be able to send messages to another user 
    So that I can know their thoughts and feelings

Background:
  
    Given the following Users exist:
    
    | username     | email              | password    |
    | user1        | user1@berkeley.edu | password1   |
    | user2        | user2@berkeley.edu | password2   |
    
    And I am logged in as user1
    And I am on the Chat page with user2

Scenario: Send a message to user2
    When I fill in "message_input_field" with "Hi user2" <-- we're gonna label the input as message_field so would that be better? idk ur cucumber master
    And I press "Send"
    Then I should see "Hi user2" in "messaging_window"

Scenario: Send an empty message to user2
    When I fill in "message_input_field" with ""
    Then "Send" should be disabled
    


 
