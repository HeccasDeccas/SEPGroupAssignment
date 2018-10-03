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
public class StockroomTest {

    WebDriver driver;

    @Given("^Stockroom fills in login details$")
    public void stockroom_fills_in_login_details() throws Throwable {
        Class<? extends WebDriver> driverClass = ChromeDriver.class;
        WebDriverManager.getInstance(driverClass).setup();
        driver = driverClass.newInstance();
        driver.navigate().to("https://sep-project-216707.appspot.com/");
        driver.findElement(By.name("ID")).sendKeys("333444");
        driver.findElement(By.name("password")).sendKeys("allstars123");
    }

    @When("^Stockroom selects login button$")
    public void stockroom_selects_login_button() throws Throwable {
        driver.findElement(By.id("Login")).click();

    }

    @Then("^system should process login and direct to the stockroom dashboard$")
    public void system_should_process_login_and_direct_to_the_dashboard() throws Throwable {
        if (driver.getCurrentUrl().equals("https://sep-project-216707.appspot.com/stockManagementDashboard.jsp")) {
            System.out.println("Stockroom sees dashboard");
        } else {
            System.out.println("Dashboard is not present");
        }
        driver.quit();
    }

}
