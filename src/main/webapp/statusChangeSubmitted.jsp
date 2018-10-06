<%-- 
    Document   : statusChangeSubmitted
    Created on : 03/10/2018, 6:01:35 PM
    Author     : Jarrod
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="css/style.css">
        <title>Status Change Submitted</title>
    </head>
    <body>
        <div class="container">
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
            <img id="tickIcon" src="images/tick.png" alt="tick">
            <h2>The order status fields have been updated successfully.</h2>
            <br>
            <div class="submitAnotherForm">
            <a href="stockManagementOrders.jsp">Go back to Stationery Orders</a>
            </div>
            <br>
        </div>
        <footer>
            <p>Copyright UTS 2018 | All rights reserved.</p>
        </footer>
        </div>
    </body>
</html>
