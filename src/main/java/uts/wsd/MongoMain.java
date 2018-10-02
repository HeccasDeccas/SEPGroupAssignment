/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;

import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;

/**
 *
 * @author New
 */
public class MongoMain {
    
    public static void main(String args[]) {      
        
    }
    
    public void add(String name, String staffID, String email, String faculty, String dateOfRequest, String product, String quantity) {
        //OLD:
        //String uri = "mongodb+srv://Admin:admin@mongodb-pxsiy.mongodb.net/admin";
        
        //EXAMPLE:
        //mongodb://<dbuser>:<dbpassword>@ds121343.mlab.com:21343/mongodb_sep
        
        //NEW:
        String uri = "mongodb://jarrodwatts16:Testpass123!@ds121343.mlab.com:21343/mongodb_sep";
        
        MongoClientURI clientURI = new MongoClientURI(uri);
        MongoClient mongoClient = new MongoClient(clientURI);
        
        MongoDatabase mongoDatabase = mongoClient.getDatabase("mongodb_sep");
        MongoCollection collection = mongoDatabase.getCollection("test");
        
        Document document = new Document("name", "Daeshan");
        
        document.append("name", name);
        document.append("staffID", staffID);
        document.append("email", email);
        document.append("faculty", faculty);
        document.append("dateOfRequest", dateOfRequest);
        document.append("product", product);
        document.append("quantity", quantity);
        
        collection.insertOne(document);
    }
    
    
}