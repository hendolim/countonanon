Feature: sign in to user account

    As a new user
    So that I can use other features of SafeSpace
    I want to be able to sign in with my username and password

Background:
  
    Given the following Users exist:
    
    |username          |email                   |password           |
    |my_account        |my_account@berkeley.edu |qwerty             |
    
    And I am on the Sign In page

Scenario: Sign in with correct username and password pair
    When I fill in "Email" with "my_account@berkeley.edu"
    And I fill in "Password" with "qwerty"
    And I press "Log in"
    Then I should be on the chat page

Scenario: Sign in with incorrect username and password pair
    When I fill in "Email" with "does_not_exist@berkeley.edu"
    And I fill in "Password" with "qwerty"
    And I press "Log in"
    Then I should be on the Sign In page
    And I should see "Incorrect email or password"


    

    
  