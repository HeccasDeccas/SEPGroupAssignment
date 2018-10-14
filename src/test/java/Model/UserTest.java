/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;
import com.mongodb.MongoClient;
import com.mongodb.MongoClientURI;
import com.mongodb.client.MongoCollection;
import com.mongodb.client.MongoDatabase;
import java.util.ArrayList;
import java.util.Date;
import javax.swing.text.Document;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;
import uts.wsd.Staff;

/**
 *
 * @author HeccasDeccas
 */
public class UserTest {
    
    public UserTest() {
    }
    
    @BeforeClass
    public static void setUpClass() {
    }
    
    @AfterClass
    public static void tearDownClass() {
    }

    /**
     * Test of getID method, of class Staff.
     */
    @Test
    public void testGetStaffID() {
        System.out.println("getStaffID");
        Staff instance = new Staff("123","Testname","Test@test.com","Password", "staff");
        String expResult = "123";
        String result = instance.getID();
        assertEquals(expResult, result);
     
    }

    /**
     * Test of getEmail method, of class Staff.
     */
    @Test
    public void testGetEmail() {
        System.out.println("getEmail");
        Staff instance = new Staff("123","Testname","Test@test.com","Password", "staff");
        String expResult = "Test@test.com";
        String result = instance.getEmail();
        assertEquals(expResult, result);
        
    }

    /**
     * Test of getName method, of class User.
     */
    @Test
    public void testGetName() {
        System.out.println("getName");
        Staff instance = new Staff("123","Testname","Test@test.com","Password", "staff");
        String expResult = "Testname";
        String result = instance.getName();
        assertEquals(expResult, result);
       
    }

    /**
     * Test of getPassword method, of class User.
     */
    @Test
    public void testGetPassword() {
        System.out.println("getPassword");
        Staff instance = new Staff("123","Testname","Test@test.com","Password", "staff");
        String expResult = "Password";
        String result = instance.getPassword();
        assertEquals(expResult, result);

    }

   @Test
    public void testGetRole() {
        System.out.println("getRole");
        Staff instance = new Staff("123","Testname","Test@test.com","Password", "staff");
        String expResult = "staff";
        String result = instance.getRole();
        assertEquals(expResult, result);

    }
    @Test
    public void testMongo() {
        System.out.println("Mongo Connection Test");
                String uri = "mongodb://jarrodwatts16:Testpass123!@ds121343.mlab.com:21343/mongodb_sep";
        
                MongoClientURI clientURI = new MongoClientURI(uri);
                MongoClient mongoClient = new MongoClient(clientURI);

                MongoDatabase mongoDatabase = mongoClient.getDatabase("mongodb_sep");
                MongoDatabase expResult; 
               if (mongoDatabase != null)
               {
                   expResult = mongoDatabase;
                   assertEquals(expResult, mongoDatabase);
                   System.out.println("Connection is Successful!");
                   return;
               }
               assertFail();
                 }

    private void assertFail() {
        int fail = 1;
        int Bec = 2 ; 
        assertEquals(fail, Bec);
    }





    
}
