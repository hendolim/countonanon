Feature: Recieve a message to a buddy
    As a user 
    I want to be able to recieve messages from another user 
    So that I can know their thoughts and feelings

Background:
	Given the following Users exist:
    |username           |email                  |password           |
    |account_1          |account_1@berkeley.edu |qwertyuiop         |
    |account_2          |account_2@berkeley.edu |12345678           |
    |account_3          |account_3@berkeley.edu |12345678           |

    Given account_1 send message "Hello" to account_2

Scenario: Correct logged in user
	Given I am logged in as account_2
	And I am on the Chat page
	When I press tab account_1
	Then I should see "Hello"

Scenario: Incorrect logged in user
	Given I am logged in as account_3
	And I am on the Chat page
	When I press tab account_1
	Then I should not see "Hello"