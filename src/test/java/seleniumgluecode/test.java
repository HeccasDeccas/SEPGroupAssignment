/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package seleniumgluecode;
import java.util.concurrent.TimeUnit;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;

/**
 *
 * @author decla
 */
public class test {
<<<<<<< HEAD
    public static WebDriver driver;
    @Given("^user is on Login Page$")
    public void user_is_on_loginpage() throws Throwable {     
    	System.setProperty("webdriver.gecko.driver","/Users/Documents/geckodriver");
=======
    /*public static WebDriver driver;
    @Given("^user is on Login Page$")
    public void user_is_on_loginpage() throws Throwable {     
    	System.setProperty("webdriver.chrome.driver","/Users/Documents/chromedriver");
>>>>>>> parent of e17911b... Testing Testing
        driver = new FirefoxDriver();
        driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        driver.get("http://automationpractice.com/index.php");
    }
        
    @When("^user enters Username and Password$")
    public void user_enters_Username_and_Password() throws Throwable {
<<<<<<< HEAD
    	driver.findElement(By.id("email")).sendKeys("blog.cucumber@gmail.com");
        driver.findElement(By.id("passwd")).sendKeys("Cucumber@blog");
=======
    	driver.findElement(By.id("ID")).sendKeys("123456");
        driver.findElement(By.id("password")).sendKeys("blahblah123");
>>>>>>> parent of e17911b... Testing Testing
        driver.findElement(By.id("SubmitLogin")).click();   
    }
    
    @Then("^user dashboard is displayed$")
    public void user_dashboard_is_displayed() throws Throwable {
<<<<<<< HEAD
    	
      
        driver.quit(); 
    }
}
=======
    	driver.findElement(By.id("FillIn"));
        driver.quit(); 
    }*/
}
>>>>>>> parent of e17911b... Testing Testing
