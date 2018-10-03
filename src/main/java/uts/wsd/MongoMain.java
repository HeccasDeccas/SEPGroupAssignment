/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package uts.wsd;


import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoCursor;
import com.mongodb.client.MongoDatabase;
import org.bson.Document;
import org.bson.conversions.Bson;

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
        document.append("orderStatus", "Pending");
        
        collection.insertOne(document);

    } //end add()
    
    public void subtract(String productName, String quantity) {
        
        int quantityIntValue = Integer.parseInt(quantity);
        
        String uri = "mongodb://jarrodwatts16:Testpass123!@ds119503.mlab.com:19503/mongodb_sep_stock";

        MongoClientURI clientURI = new MongoClientURI(uri);
        MongoClient mongoClient = new MongoClient(clientURI);

        MongoDatabase mongoDatabase = mongoClient.getDatabase("mongodb_sep_stock");
        MongoCollection collection = mongoDatabase.getCollection("test");

            Document found = (Document) collection.find(new Document("name", productName)).first();
           
                int originalQuantity = Integer.parseInt(found.get("quantity").toString()); //this is the quantity to begin with
                int calculatedNewQuantity = originalQuantity - quantityIntValue; //old minus new = calculatedNewQuantity
                
                Bson updatedvalue = new Document("quantity", calculatedNewQuantity);
                Bson updateoperation = new Document("$set", updatedvalue);
                collection.updateOne(found,updateoperation);

    }
    
    public void changeStatus(String objectId, String status) {
        String uri = "mongodb://jarrodwatts16:Testpass123!@ds121343.mlab.com:21343/mongodb_sep";
        
        MongoClientURI clientURI = new MongoClientURI(uri);
        MongoClient mongoClient = new MongoClient(clientURI);
        
        MongoDatabase mongoDatabase = mongoClient.getDatabase("mongodb_sep");
        MongoCollection collection = mongoDatabase.getCollection("test");

        Document found = (Document) collection.find(new Document("_id", objectId)).first();

        Bson updatedvalue = new Document("orderStatus", status);
        Bson updateoperation = new Document("$set", updatedvalue);
        collection.updateOne(found, updateoperation);
    }
    
    public String getCurrentStatus(String id) {
        String uri = "mongodb://jarrodwatts16:Testpass123!@ds121343.mlab.com:21343/mongodb_sep";
        
        MongoClientURI clientURI = new MongoClientURI(uri);
        MongoClient mongoClient = new MongoClient(clientURI);
        
        MongoDatabase mongoDatabase = mongoClient.getDatabase("mongodb_sep");
        MongoCollection collection = mongoDatabase.getCollection("test");

        Document found = (Document) collection.find(new Document("_id", id)).first();

        return found.get("orderStatus").toString();
    }
}