Feature: Test open StationarySystemURL
  Verify if the log in interface is functioning

  @testing
  Scenario: User opens Login page
    Given user opens browser
    When login page is loaded
    Then login button is active
    When user logs in
    Then logout button should be present
    When user logs out
    Then logout page should be displayed

  Scenario: UTS Staff member completes form
    Given UTS Staff Member logs in
    When submitting an incomplete form
    Then system should show an error message when incomplete field
    When submitting a form with details not on file
    Then system should show an error message
    When submitting a form with incorrect name format
    Then system should show an invalid name message
    When submitting a form with incorrect id format
    Then system should show an invalid id message
    When submitting a form with incorrect email format
    Then system should show an invalid email message
    When completing order form
    Then system should have both drop down options and text fields
    When select product drop down
    Then system should have products including 'HB Pencil', 'Sticky Notes', 'Ruler', 'Plastic Sleeve' and 'Folder'
    When submitting form
    Then system should show a successful submission screen

  Scenario: Receptionist logs in to dashboard
    Given Receptionist fills in login details
    When selects login button
    Then system should process login and direct to the dashboard
    Then dashboard should contain 'Request Form' and 'View All Stationery Requests' buttons
    When select 'View all stationary requests button'
    Then system should show a table of the orders with a status column reading 'pending', 'underway', 'shipped' or 'complete'
    When selects status filter
    Then filter contains the options 'complete' and 'pending' based on the orders status

  Scenario: Stockroom logs in to dashboard
    Given Stockroom fills in login details
    When Stockroom selects login button
    Then system should process login and direct to the stockroom dashboard
    When click view stationery inventory
    Then can see a table with the product 'name', 'price', 'description', and 'quantity'
    When tries to view all the orders placed
    Then the system should show a table of the orders placed on the view orders screen
    When try to change the status of an order, the system should provide me with a drop-down menu of options
    Then These options should include 'pending', 'underway', 'shipped' and 'complete'
    When I change the status of an order
    Then system should present feedback with the message “The order status fields have been updated successfully.”
