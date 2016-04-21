Feature: Recieve a message to a buddy
    As a user 
    I want to be able to know if I receive a message 
    So that I can reply them immediately

Background:
	Given the following Users exist:
    |username           |email                  |password           |
    |account_1          |account_1@berkeley.edu |qwertyuiop         |
    |account_2          |account_2@berkeley.edu |12345678           |
    |account_3          |account_3@berkeley.edu |12345678           |

    And I setup a server for websocket

Scenario: Correct logged in user
    When I am in account_1 browser
    Given I am logged in as account_1@berkeley.edu with qwertyuiop
    And I follow "Chat"
    Then I follow "account_2"
    When I am in account_2 browser
    Given I am logged in as account_2@berkeley.edu with 12345678
    Then I send message "Hello" to account_1
    Then I am in account_1 browser
	Then I should see ""