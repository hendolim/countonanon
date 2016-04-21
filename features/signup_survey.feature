Feature: Sign Up Survey
    As a user
    I want to be able to identify myself to other user
    so that people can find me as matches for friends

Background:
  
    Given I am on the Sign Up page
    And I fill in "Username" with "user1"
    And I fill in "Email" with "user1@berkeley.edu"
    And I fill in "Password" with "password1"
    And I fill in "Password confirmation" with "password1"
    And I press "Sign up"

Scenario: Filling out form for Sign Up Survey
    When I fill in "Age" with "21"
    And I fill in "Year of" with "Senior"
    And I fill in "Ethnicity" with "Hispanic"
    And I fill in "Mental Health" with "Depression"
    And I fill in "Sexual Orientation" with "Bisexual"
    And I press "Submit"
    Then I should see "Submitting Succeed"
    
    When I follow "Profile"
    Then I should see "21"
    And I should see "Senior"
    And I should see "Hispanic"
    And I should see "Depression"