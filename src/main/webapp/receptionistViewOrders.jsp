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
                    <a href="receptionistDashboard.jsp">Return to Dashboard</a>
                    |
                    <a href="logoutPage.jsp">Logout</a>
                </div>
                
        <div class="maincontent">
        <h2 class="databaseHeading">FEIT Stationery Orders</h2> 
        <table class="viewTable">
            <tr id="tableHeader">
                <th class="headerRow">Staff ID</th>
                <th class="headerRow">Name</th>
                <th class="headerRow">Email</th>
                <th class="headerRow">Faculty</th>
                <th class="headerRow">Date of Request</th>
                <th class="headerRow">Product</th>
                <th class="headerRow">Quantity</th>
            </tr>
            <tr>
                <td class="requestInfo">12345</td>
                <td class="requestInfo">Kevin Woo</td>
                <td class="requestInfo">woothepoo@gmail.com</td>
                <td class="requestInfo">Design</td>
                <td class="requestInfo">15/3/2018</td>
                <td class="requestInfo">Pencils</td>
                <td class="requestInfo">69</td>
            </tr>
        </table>
        <br>
        <p>PLACEHOLDER FOR ORDERS TABLE. This should include Employee ID, First Name, Surname, Contact Number, Email, Role, Order ID, Order Date, Order Status and Order Received. Receptionist should be able to edit only "Order Received" column to confirm whether the order has been delivered to the faculty.</p>
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