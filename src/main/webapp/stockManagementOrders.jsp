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
        <table class="viewTable">
            <tr id="tableHeader">
                <th class="headerRow">Staff ID</th>
                <th class="headerRow">Name</th>
                <th class="headerRow">Email</th>
                <th class="headerRow">Faculty</th>
                <th class="headerRow">Date of Request</th>
                <th class="headerRow">Product</th>
                <th class="headerRow">Quantity</th>
                <th class="headerRow">Order Status</th>
            </tr>
            <tr>
                <td class="requestInfo">12345</td>
                <td class="requestInfo">Kevin Woo</td>
                <td class="requestInfo">woothepoo@gmail.com</td>
                <td class="requestInfo">Design</td>
                <td class="requestInfo">15/3/2018</td>
                <td class="requestInfo">Pencils</td>
                <td class="requestInfo">69</td>
                <td class="requestInfo">Completed</td>
            </tr>
            <tr>
                <td class="requestInfo">12348</td>
                <td class="requestInfo">Peter Bark</td>
                <td class="requestInfo">barker109@yahoo.com.au</td>
                <td class="requestInfo">FEIT</td>
                <td class="requestInfo">25/09/2018</td>
                <td class="requestInfo">Pencils</td>
                <td class="requestInfo">10</td>
                <td class="requestInfo">In Progress</td>
            </tr>
            <tr>
                <td class="requestInfo">12349</td>
                <td class="requestInfo">Angel Fu</td>
                <td class="requestInfo">halogirl@outlook.com</td>
                <td class="requestInfo">Arts</td>
                <td class="requestInfo">19/09/2018</td>
                <td class="requestInfo">Pencils</td>
                <td class="requestInfo">39</td>
                <td class="requestInfo">Completed</td>
            </tr>
            <tr>
                <td class="requestInfo">12340</td>
                <td class="requestInfo">James Carter</td>
                <td class="requestInfo">carter654@outlook.com</td>
                <td class="requestInfo">Business</td>
                <td class="requestInfo">05/08/2018</td>
                <td class="requestInfo">Pencils</td>
                <td class="requestInfo">25</td>
                <td class="requestInfo">Completed</td>
            </tr>
        </table>
        </div>
        <footer>
            <p>Copyright UTS 2018 | All rights reserved.</p>
        </footer>
        </div>
        </div>
    </body>
</html>