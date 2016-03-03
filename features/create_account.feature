Feature: create a new user account
  
    As an individual suffering from depression
    So I can talk to others like myself
    I want to be able to create an account on SafeSpace
 
Background: some username, email, and password tuples
    
    Given the following users exist:
    |username           |email                  |password           |
    |account_1          |account_1@berkeley.edu |qwerty             |

    And I am on Sign Up page

Scenario: create an account with existing username
    Given that I filled username field with "account_1"
    Given that I filled email field with "rockers@berkeley.edu"
    Given that I filled password field with "asdf"
    When I pressed Sign Up button
    Then I should be on Sign Up page
    Then I should see flash message "username already exist"

Scenario: create an account with existing email
    Given that I filled username field with "new_account"
    Given that I filled email field with "account_1@berkeley.edu"
    Given that I filled password field with "asdf"
    When I pressed Sign Up button
    Then I should be on Sign Up page
    Then I should see flash message "email has already been used"

Scenario: create an account with new username and email
    Given that I filled username field with "new_account"
    Given that I filled email field with "new_account@berkeley.edu"
    Given that I filled password field with "asdf"
    When I pressed Sign Up button
    Then I should be on Finished Sign Up Page
    Then I should see "Congratulations on signing up"

Scenario: create an account with non-berkeley email
    Given that I filled username field with "new_account"
    Given that I filled email field with "new_account@gmail.com"
    Given that I filled password field with "asdf"
    When I pressed Sign Up button
    Then I should be on Sign Up page
    Then I should see "Must use berkeley.edu email"
    
  