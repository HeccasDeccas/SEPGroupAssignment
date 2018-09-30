Feature: Test open StationarySystemURL
Verify if the log in interface is functioning 

@testing
Scenario: User opens Login page
    Given user opens browser
    When login page is loaded
    Then login button is active