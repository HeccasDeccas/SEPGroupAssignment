<%-- 
    Document   : stationeryInventory
    Created on : 17/09/2018, 9:16:58 AM
    Author     : jamie
--%>

<%@page import="com.mongodb.client.MongoCursor"%>
<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.client.MongoCollection"%>
<%@page import="com.mongodb.client.MongoDatabase"%>
<%@page import="com.mongodb.MongoClient"%>
<%@page import="com.mongodb.MongoClientURI"%>
<%@page import="uts.wsd.MongoMain"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
      <link rel="stylesheet" href="css/style.css">
        <title>Stationery Inventory</title>
    </head>
    <body>
        <% MongoMain database = new MongoMain(); %>
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
        
         <table class="viewTable" id="mainTable">
             
            <tr id="tableHeader">    
                <th class="headerRow">Stationery ID</th>
                <th class="headerRow">Name</th>
                <th class="headerRow">Price</th>
                <th class="headerRow">Description</th>
                <th class="headerRow">Quantity</th>
            </tr>
            
            <%
                
                String uri = "mongodb://jarrodwatts16:Testpass123!@ds119503.mlab.com:19503/mongodb_sep_stock";
        
                MongoClientURI clientURI = new MongoClientURI(uri);
                MongoClient mongoClient = new MongoClient(clientURI);

                MongoDatabase mongoDatabase = mongoClient.getDatabase("mongodb_sep_stock");
                MongoCollection collection = mongoDatabase.getCollection("test");
                
                  //Get count of items
                  //Performing a read operation on the collection
                 MongoCursor<Document> cursor = collection.find().iterator();
                  
                  while (cursor.hasNext()) {
                    Document obj = cursor.next();
                    //create a row %>
                    <%
                        //create one td per attribute
                        String stationeryID = (String) obj.get("stationeryID");
                        String name = (String) obj.get("name");
                        String price = (String) obj.get("price");
                        String description = (String) obj.get("description");
                        int quantity = Integer.parseInt(obj.get("quantity").toString());
                    %> 
                        
                    <tr>
                        <td><%= stationeryID%></td>
                        <td><%=name %></td>
                        <td><%=price %></td>
                        <td><%=description %></td>
                        <td><%=quantity%></td>
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