Feature: Test open StationarySystemURL
  Verify if the log in interface is functioning

  @testing
  Scenario: User opens Login page
    Given user opens browser
    When login page is loaded
    Then login button is active

  Scenario: UTS Staff member completes form
    Given UTS Staff Member logs in
    When submitting an incomplete form
    Then system should show an error message when incomplete field AND when input is invalid
    When completing order form
    Then system should have both drop down options and text fields
    When submitting form
    Then system should show a successful submission screen

  Scenario: Receptionist logs in to dashboard
    Given Receptionist fills in login details
    When selects login button
    Then system should process login and direct to the dashboard
    Then dashboard should contain 'Request Form' and 'View All Stationery Requests' buttons
    When select 'View all stationary requests button'
    Then system should show a table of the orders with a status column reading 'pending', 'in progress', 'in transit' and 'complete'

  Scenario: Stockroom logs in to dashboard
    Given Stockroom fills in login details
    When Stockroom selects login button
    Then system should process login and direct to the stockroom dashboard
    When tries to view all the orders placed
    Then the system should show a table of the orders placed on the view orders screen
    When try to change the status of an order, the system should provide me with a drop-down menu of options
    Then These options should include 'pending', 'in progress', 'in transit' and 'complete'
    When I change the status of an order 
    Then system should present feedback with the message “The order status fields have been updated successfully.”
    