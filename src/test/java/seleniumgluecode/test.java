/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package seleniumgluecode;
import java.util.concurrent.TimeUnit;
import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import io.github.bonigarcia.wdm.WebDriverManager;
import org.junit.Assert;

/**
 *
 * @author decla
 */
public class test {
    WebDriver driver;
    @Given("^user is on Login Page$")
    public void user_is_on_loginpage() throws Throwable {     
    	//System.setProperty("webdriver.chrome.driver","/Users/Documents/chromedriver");
        Class<? extends WebDriver> driverClass = ChromeDriver.class;
        WebDriverManager.getInstance(driverClass).setup();
        driver = driverClass.newInstance();
        driver.get("https://sep-project-216707.appspot.com/");
        //driver = new ChromeDriver();
        //driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        //driver.get("http://automationpractice.com/index.php");
    }
        
    @When("^user enters Username and Password$")
    public void user_enters_Username_and_Password() throws Throwable {
    	//driver.findElement(By.id("ID")).sendKeys("123456");
        //driver.findElement(By.id("password")).sendKeys("blahblah123");
        //driver.findElement(By.id("SubmitLogin")).click(); 
        driver.navigate().to(driver.getCurrentUrl());
    }
    
    @Then("^user dashboard is displayed$")
    public void user_dashboard_is_displayed() throws Throwable {
    	if(driver.findElement(By.id("Login")).isEnabled()) {
            System.out.println("Login button enabled");
        } else {
            System.out.println("Login button disabled");
        }
        driver.close(); 
    }
}