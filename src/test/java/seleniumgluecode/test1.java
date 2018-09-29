/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package seleniumgluecode;

import java.util.concurrent.TimeUnit;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.chrome.ChromeDriver;

/**
 *
 * @author decla
 */
public class test1 {
    WebDriver driver;
    @Given("^user opens browser$")
    public void user_opens_browser() throws Throwable {     
        //Class<? extends WebDriver> driverClass = ChromeDriver.class;
        //WebDriverManager.getInstance(driverClass).setup();
        //driver = driverClass.newInstance();
        driver = new ChromeDriver();
        //driver.get("https://sep-project-216707.appspot.com/");
    }
        
    @When("^login page is loaded$")
    public void login_page_loaded() throws Throwable {
    	driver.navigate().to("https://sep-project-216707.appspot.com/");
    }
    
    @Then("^login button is active$")
    public void login_button_enabled() throws Throwable { 
      if(driver.findElement(By.id("Login")).isEnabled()) { 
         System.out.println("Login button enabled"); 
      } else { 
         System.out.println("Login button disabled"); 
      } 
      driver.close(); 
    }
}