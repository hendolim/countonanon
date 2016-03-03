Feature: sign in to user account

    As a new user
    So that I can use other features of SafeSpace
    I want to be able to sign in with my username and password

Background: I already have my username, berkeley email, and password tuple in the database
  
    Given that the following users exist:
    
    |username          |email                   |password           |
    |my_account        |my_account@berkeley.edu |qwerty             |
    
    And I am on SafeSpace sign in page

Scenario: Sign in with correct username and password pair
    Given that I filled username field with "my_account"
    Given that I filled password field with "qwerty"
    When I pressed the Sign In button
    Then I should be on Chat page

Scenario: Sign in with incorrect username and password pair
    Given that I filled username field with "does_not_exist"
    Given that I filled password field with "qwerty"
    When I pressed the Sign In button
    Then I should be on Sign In page
    Then I should see flash message "Incorrect password or username"


    

    
  