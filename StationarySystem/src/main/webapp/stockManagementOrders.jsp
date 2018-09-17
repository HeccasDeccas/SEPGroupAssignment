<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <link rel="stylesheet" href="css/style.css">
        <title>View Orders</title>
    </head>
    <body>
            <div class="databaseContainer">
            <header>
                <img class="UTSLogoWhite" src="images/UTS_Logo_White.png" alt="UTS_Logo"> 
                    <h1>Stationery Management System</h1>
            </header>
        
                <div class="navbuttons">
                    <a href="stockManagementDashboard.jsp">Return to Dashboard</a>
                    |
                    <a href="logoutPage.jsp">Logout</a>
                </div>
                
        <div class="maincontent">
        <h2 class="databaseHeading">FEIT Stationery Orders</h2> 
        <br>
        <p>PLACEHOLDER FOR ORDERS TABLE. This should include Employee ID, First Name, Surname, Contact Number, Email, Role, Department Name, Order ID, Order Date, Order Status and Order Received. Stock management employees should be able to edit only "Order Status" column to confirm whether the order has been packed and ready to send to the faculty.</p>
        <br>
        <h4 class="databaseSubheading">Order Stationery Items</h4>
        <p>PLACEHOLDER FOR DISPLAY OF STATIONERY ITEMS. When a record is clicked in the above table, it should display the list of stationery items and their requested quantity in a table format.</p>
        </div>
        <footer>
            <p>Copyright UTS 2018 | All rights reserved.</p>
        </footer>
        </div>
        </div>
    </body>
</html>