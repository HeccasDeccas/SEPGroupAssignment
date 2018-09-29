Feature: Login Feature 
Verify if the log in interface is functioning 


@testing
Scenario: Login as a authenticated user
    Given user is on Login Page
    When user enters Username and Password
    Then user dashboard is displayed 
