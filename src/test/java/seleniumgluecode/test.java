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
    @Given("^user opens browser$")
    public void user_opens_browser() throws Throwable {     
    	//System.setProperty("webdriver.chrome.driver","/Users/Documents/chromedriver");
        Class<? extends WebDriver> driverClass = ChromeDriver.class;
        WebDriverManager.getInstance(driverClass).setup();
        driver = driverClass.newInstance();
        driver.get("https://sep-project-216707.appspot.com/");
        //driver = new ChromeDriver();
        //driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
        //driver.get("http://automationpractice.com/index.php");
    }
        
    @When("^login page is loaded$")
    public void login_page_is_loaded() throws Throwable {
    	//driver.findElement(By.id("ID")).sendKeys("123456");
        //driver.findElement(By.id("password")).sendKeys("blahblah123");
        //driver.findElement(By.id("SubmitLogin")).click(); 
        driver.navigate().to(driver.getCurrentUrl());
    }
    
    @Then("^login button is active$")
    public void login_button_is_active() throws Throwable {
    	if(driver.findElement(By.id("Login")).isEnabled()) {
            System.out.println("Login button enabled");
        } else {
            System.out.println("Login button disabled");
        }
        driver.close(); 
    }
}