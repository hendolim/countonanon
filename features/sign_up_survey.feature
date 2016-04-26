Feature: Sign Up Survey
    As a user
    I want to be able to identify myself to other user
    so that people can find me as matches for friends
​
Background:
  
    When I fill in "Username" with "account_1"
    And I fill in "Email" with "rockers@berkeley.edu"
    And I fill in "Password" with "asdfghjk"
    And I fill in "Password confirmation" with "asdfghjk"
    And I press "Sign up"

Scenario: Filling out form for Sign Up Survey
    When I fill in "Age" with "13"
    When I fill in "Year of" with "Senior"
    When I fill in "Ethnicity" with "Hispanic"
    When I fill in "Mental Health" with "Depression"
    When I fill in "Sexual Orientation" with "Bisexual"
    And I press "Submit"
    Then I should see "Submitting Succeed"
    When I follow "Profile"
    Then I should see "13"
    Then I should see "Senior"
    Then I should see "Hispanic"
    Then I should see "Depression"

    

    