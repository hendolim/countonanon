Feature: sign up from the home page
 
  As a User that is not logged in
  So that I can become a user of SafeSpace
  I want to be able to sign up and create an account from the home page

Background: User is not logged in
  
  Given I am on the SafeSpace home page

Scenario: sign up from the home page
  When I am not logged in
  And  I go to the SafeSpace home page
  And I press "Sign Up"
  Then I should be on the sign up page

Scenario: create account with valid Berkeley email
  When I am on the sign up page
  And I fill in "valid@berkeley.edu"
  And I fill in "Username" with "username"
  And I fill in "Password" with "password"
  And I press "Sign Up"
  Then I should be on the chat page
  
Scenario: create account with invalid Berkeley email
  When I am on the sign up page
  And I fill in "invalid@berkeley.edu"
  And I fill in "Username" with "username"
  And I fill in "Password" with "password"
  And I press "Sign Up"
  Then I should be on the sign up page
  And I should see "Invalid email"
  