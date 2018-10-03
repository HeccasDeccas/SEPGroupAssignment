<%-- 
    Document   : statusChangeAction
    Created on : 03/10/2018, 5:29:34 PM
    Author     : Jarrod
--%>
<%@page import="org.bson.conversions.Bson"%>
<%@page import="com.mongodb.client.MongoCursor"%>
<%@page import="org.bson.Document"%>
<%@page import="com.mongodb.client.MongoCollection"%>
<%@page import="com.mongodb.client.MongoDatabase"%>
<%@page import="com.mongodb.MongoClient"%>
<%@page import="com.mongodb.MongoClientURI"%>
<%@page import="java.util.*"%>
<%@page import="uts.controller.*"%>
<%@page import="uts.wsd.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Status Change Action Page</title>
    </head>
    <body>
        <%
            MongoMain database = new MongoMain();
            String uri = "mongodb://jarrodwatts16:Testpass123!@ds121343.mlab.com:21343/mongodb_sep";
        
            MongoClientURI clientURI = new MongoClientURI(uri);
            MongoClient mongoClient = new MongoClient(clientURI);

            MongoDatabase mongoDatabase = mongoClient.getDatabase("mongodb_sep"); //requests database
            MongoCollection collection = mongoDatabase.getCollection("test");
            
            long numberOfDocuments = collection.count();
            
            MongoCursor<Document> cursor = collection.find().iterator();
                
            //loop through each document in the collection
            while (cursor.hasNext()) {
                Document obj = cursor.next();
                //for each item get the current status
                String thisStatus = obj.get("orderStatus").toString();
                
                //for each item get the current id
                String objectId = obj.get("_id").toString();
                
                // for each ID get get the request parameter for that ID
                String result = request.getParameter(objectId);

                //for each value update the document
                Bson updatedvalue = new Document("orderStatus",result);
                Bson updateoperation = new Document("$set", updatedvalue);
                collection.updateOne(obj,updateoperation);
                
                
            }
            response.sendRedirect("statusChangeSubmitted.jsp");
        %>
        
    </body>
</html>
