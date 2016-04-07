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

    Given I am logged in as account_1@berkeley.edu with qwertyuiop
    Then I send message "Hello" to account_2
    And I log out

Scenario: Correct logged in user
	Given I am logged in as account_2@berkeley.edu with 12345678
    Then I should see "New Message"
	And I follow "Chat"
	Then I should see "New Message"

Scenario: The notif is opened
    Given I am logged in as account_2@berkeley.edu with 12345678
    And I follow "Chat"
    Then I follow "account1"
    Then I should not see "New Message"

Scenario: Incorrect logged in user
	Given I am logged in as account_3@berkeley.edu with 12345678
	Then I should not see "New Message"
