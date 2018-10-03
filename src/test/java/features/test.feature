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
    When submitting an incomplete form
    Then system should show an error message when incomplete field AND when input is invalid
    When submitting form
    Then system should show a successful submission screen

Scenario: Receptionist logs in to dashboard
    Given Receptionist fills in login details
    When selects login button
    Then system should process login and direct to the dashboard

Scenario: Stockroom logs in to dashboard
    Given Stockroom fills in login details
    When Stockroom selects login button
    Then system should process login and direct to the stockroom dashboard
