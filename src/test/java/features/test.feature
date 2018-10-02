Feature: Test open StationarySystemURL
Verify if the log in interface is functioning 


@testing
Scenario: User opens Login page
    Given user opens browser
    When login page is loaded
    Then login button is active

Scenario: UTS Staff member completes form
    Given UTS Staff Member logs in
    When completing order form
    Then system should have both drop down options and text fields

