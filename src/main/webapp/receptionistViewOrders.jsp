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
                    <input type="submit" name="button1" value="Apply" class="button"> </input>
                   </form>
        
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
                String queryParam = request.getParameter("faculty");
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
                    
<<<<<<< HEAD
                         %>
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
                        
                        <%
                            //if the query parameter is not equal null
                            if (queryParam != null) {
                                //BEGIN FACULTY OF TRANSDISCIPLANRY INNOVATION
                                if(queryParam.equals("Faculty of Transdisciplinary Innovation")) {
                                    if (obj.get("faculty").equals("Faculty of Transdisciplinary Innovation")) {
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
=======
                    //create a row %>
>>>>>>> d176c4adfec3d90ad1d65aff39ac44f687ea1a86
                    <%
                        }
                        }

                          //BEGIN GRADUATE SCHOOL OF HEALTH
                          if(queryParam.equals("Graduate School of Health")) {
                                    if (obj.get("faculty").equals("Graduate School of Health")) {
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

                        //BEGIN FACULTY OF HEALTH
                          if(queryParam.equals("Faculty of Health")) {
                                    if (obj.get("faculty").equals("Faculty of Health")) {
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

                        //BEGIN FACULTY OF HEALTH
                          if(queryParam.equals("UTS Business School")) {
                                    if (obj.get("faculty").equals("UTS Business School")) {
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
                        
                        //BEGIN UTS BUSINESS SCHOOL
                          if(queryParam.equals("Faculty of Science")) {
                                    if (obj.get("faculty").equals("Faculty of Science")) {
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

                        //BEGIN FACULTY OF LAW
                          if(queryParam.equals("Faculty of Law")) {
                                    if (obj.get("faculty").equals("Faculty of Law")) {
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
                        
<<<<<<< HEAD
                        //BEGIN FASS
                          if(queryParam.equals("Faculty of Arts and Social Science")) {
                                    if (obj.get("faculty").equals("Faculty of Arts and Social Science")) {
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
                        
                        //BEGIN FDAB
                          if(queryParam.equals("Faculty of Design, Architecture and Building")) {
                                    if (obj.get("faculty").equals("Faculty of Design, Architecture and Building")) {
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

                        //BEGIN FEIT
                          if(queryParam.equals("Faculty of Engineering and Information Technology")) {
                                    if (obj.get("faculty").equals("Faculty of Engineering and Information Technology")) {
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
=======
                    <tr>
                        <td><%= name%></td>
                        <td><%=ID %></td>
                        <td><%=email %></td>
                        <td><%=faculty %></td>
                        <td><%=dateOfRequest %></td>
                        <td><%=product %></td>
                        <td><%=quantity %></td>
                        <td><%=orderStatus %></td>
                    </tr>}
>>>>>>> d176c4adfec3d90ad1d65aff39ac44f687ea1a86
                    <%
                        }
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