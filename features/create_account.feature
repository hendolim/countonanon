Feature: create a new user account
  
    As an individual suffering from depression
    So I can talk to others like myself
    I want to be able to create an account on SafeSpace
 
Background:
    
    Given the following Users exist:
    |username           |email                  |password           |
    |account_1          |account_1@berkeley.edu |qwerty             |

    And I am on the Sign Up page

Scenario: create an account with existing username
    When I fill in "Username" with "account_1"
    And I fill in "Email" with "rockers@berkeley.edu"
    And I fill in "Password" with "asdf"
    And I press "Sign up"
    Then I should be on the Sign Up page
    And I should see "username already exists"

Scenario: create an account with existing email
    When I fill in "Username" with "new_account"
    And I fill in "Email" with "account_1@berkeley.edu"
    And I fill in "Password" with "asdf"
    And I press "Sign up"
    Then I should be on the Sign Up page
    And I should see "email has already been used"

Scenario: create an account with new username and email
    When I fill in "Username" with "new_account"
    And I fill in "Email" with "new_account@berkeley.edu"
    And I fill in "Password" with "asdf"
    And I press "Sign up"
    Then I should be on the chat Page
    And I should see "Sign up successful"

Scenario: create an account with non-berkeley email
    When I fill in "Username" with "new_account"
    And I fill in "Email" with "new_account@gmail.com"
    And I fill in "Password" with "asdf"
    And I press "Sign up"
    Then I should be on the Sign Up page
    And I should see "Must use berkeley.edu email"
    
  