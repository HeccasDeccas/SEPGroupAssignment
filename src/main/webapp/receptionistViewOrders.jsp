<%@page import="java.util.ArrayList"%>
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
        
        <form action="" method="post">
            Filter by faculty:      
        
                      <select name="faculty">
                    <option value="Faculty of Transdisciplinary Innovation">Faculty of Transdisciplinary Innovation</option>
                    <option value="Graduate School of Health">Graduate School of Health</option>
                    <option value="Faculty of Health">Faculty of Health</option>
                    <option value="UTS Business School">UTS Business School</option>
                    <option value="Faculty of Law">Faculty of Law</option>
                    <option value="Faculty of Science">Faculty of Science</option>
                    <option value="Faculty of Arts and Social Science">FASS</option>
                    <option value="Faculty of Design, Architecture and Building">FDAB</option>
                    <option value="Faculty of Engineering and Information Technology">FEIT</option>
        
                        </select>  
                    
            <input type="submit" name="button1" value="Apply Changes" class="button"> </input>
        </form>
        
        <br>
        <% String queryParam = request.getParameter("faculty"); %>
        <form action="statusChangeAction.jsp" method="post">
        <table class="viewTable">
            <tr class="tableHeader">
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
                String name = "fail";
                String ID = "fail";
                String email = "fail";
                String faculty = "fail";
                String dateOfRequest=  "fail";
                String product = "fail";
                String quantity = "fail";
                String orderStatus = "fail";
                String objectId = "fail";
                
               
                ArrayList<String> listOfChangeIds = new ArrayList<String>();
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
                    //create a row %>
                    <%
                        //faculty = (String) obj.get("faculty");
                        name = (String) obj.get("name");
                            ID = (String) obj.get("ID");
                            email = (String) obj.get("email");
                            faculty = (String) obj.get("faculty");
                            dateOfRequest = (String) obj.get("dateOfRequest");
                            product = (String) obj.get("product");
                            quantity = (String) obj.get("quantity");
                            orderStatus = (String) obj.get("orderStatus").toString();
                            objectId = (String) obj.get("_id").toString();                       
                        //if query param not equal null
                        if (queryParam != null) {                           
                            if  (faculty.equals(queryParam)) {
                                try {
                            //create one td per attribute
                            
                            //String objectId = (String) obj.get("_id.$oid").toString();
                        }
                        catch (Exception e) {
                            //do nothing lol
                        }
                                %>
                                        <tr>
                                            <td><%=name%></td>
                                            <td><%=ID %></td>
                                            <td><%=email %></td>
                                            <td><%=faculty %></td>
                                            <td><%=dateOfRequest %></td>
                                            <td><%=product %></td>
                                            <td><%=quantity %></td>
                                            <td><%=orderStatus %></td>
                                        </tr>

                   
                    <%
                      }
                       
                      } //end if statement for query not null
                    else { //if no filter has been applied yet
                        %>
                        <tr>
                                            <td><%=name%></td>
                                            <td><%=ID %></td>
                                            <td><%=email %></td>
                                            <td><%=faculty %></td>
                                            <td><%=dateOfRequest %></td>
                                            <td><%=product %></td>
                                            <td><%=quantity %></td>
                                            <td><%=orderStatus %></td>
                                        </tr>
                                        <%
                    }
                    }
                    
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