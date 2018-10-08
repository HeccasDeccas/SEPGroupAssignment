<%@page import="com.mongodb.client.MongoCursor"%>
<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.client.MongoCollection"%>
<%@page import="com.mongodb.client.MongoDatabase"%>
<%@page import="com.mongodb.MongoClient"%>
<%@page import="com.mongodb.MongoClientURI"%>
<%@page import="uts.wsd.MongoMain"%>
<link rel="stylesheet" href="css/style.css">
        <title>View Orders</title>
    </head>
    <body>
        <% MongoMain database = new MongoMain(); %>
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
                <th class="headerRow">Order Status</th>
            </tr>
            
            <%
                
                //initialise hardcoded
                String uri = "mongodb://jarrodwatts16:Testpass123!@ds121343.mlab.com:21343/mongodb_sep";
        
                MongoClientURI clientURI = new MongoClientURI(uri);
                MongoClient mongoClient = new MongoClient(clientURI);

                MongoDatabase mongoDatabase = mongoClient.getDatabase("mongodb_sep");
                MongoCollection<Document> collection = mongoDatabase.getCollection("test");
                
                  //Get count of items
                  //Performing a read operation on the collection
                 MongoCursor<Document> cursor = collection.find().iterator();
                  
                  while (cursor.hasNext()) {
                    Document obj = cursor.next();
                    if ()
                    //create a row %>
                    <%
                        //create one td per attribute
                        String name = (String) obj.get("name");
                        String ID = (String) obj.get("ID");
                        String email = (String) obj.get("email");
                        String faculty = (String) obj.get("faculty");
                        String dateOfRequest = (String) obj.get("dateOfRequest");
                        String product = (String) obj.get("product");
                        String quantity = (String) obj.get("quantity");
                        String orderStatus = (String) obj.get("orderStatus");
                    %> 
                        
                    <tr>
                        <td><%= name%></td>
                        <td><%=ID %></td>
                        <td><%=email %></td>
                        <td><%=faculty %></td>
                        <td><%=dateOfRequest %></td>
                        <td><%=product %></td>
                        <td><%=quantity %></td>
                        <td><%=orderStatus %></td>
                    </tr>
                    <%
                  } //end while loop
                %>
            
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