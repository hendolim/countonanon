Feature: sign up from the home page
 
  As a User that is not logged in
  So that I can become a user of SafeSpace
  I want to be able to sign up from the home page

Background: User is not logged in
  
  Given I am on the SafeSpace home page

Scenario: sign up from the home page
  When I am not logged in
  And  I go to the SafeSpace home page
  And I press "Sign Up"
  Then I should be on the sign up page