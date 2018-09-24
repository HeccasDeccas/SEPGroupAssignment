<%-- 
    Document   : stationeryInventory
    Created on : 17/09/2018, 9:16:58 AM
    Author     : jamie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="css/style.css">
        <title>Stationery Inventory</title>
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
        <h2 class="databaseHeading">Stationery Inventory</h2>
         <table class="viewTable">
            <tr id="tableHeader">    
                <th class="headerRow">Stationery ID</th>
                <th class="headerRow">Name</th>
                <th class="headerRow">Price</th>
                <th class="headerRow">Description</th>
                <th class="headerRow">Quantity</th>
            </tr>
            <tr>
                <td class="requestInfo">100</td>
                <td class="requestInfo">Pencil</td>
                <td class="requestInfo">$2.00</td>
                <td class="requestInfo">HB and 2B pencils provided.</td>
                <td class="requestInfo">10000</td>
            <tr>
                <td class="requestInfo">101</td>
                <td class="requestInfo">Pens</td>
                <td class="requestInfo">$3.00</td>
                <td class="requestInfo">Ink, gel and ballpoint options available.</td>
                <td class="requestInfo">5000</td>
            </tr>
            <tr>
                <td class="requestInfo">102</td>
                <td class="requestInfo">Notebook</td>
                <td class="requestInfo">$4.00</td>
                <td class="requestInfo">Assorted colours.</td>
                <td class="requestInfo">5000</td>
            </tr>
        </table>
        <br>
        </div>
        <footer>
            <p>Copyright UTS 2018 | All rights reserved.</p>
        </footer>
        </div>
        </div>
    </body>
</html>