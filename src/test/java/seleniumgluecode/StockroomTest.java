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
    }

    @When("^tries to view all the orders placed$")
    public void tries_to_view_all_the_orders_placed() throws Throwable {
        driver.findElement(By.id("viewAll")).click();
    }

    @Then("^the system should show a table of the orders placed on the view orders screen$")
    public void the_system_should_show_a_table_of_the_orders_placed_on_the_view_orders_screen() throws Throwable {
        if (driver.findElement(By.tagName("table")).isDisplayed()) {
            System.out.println("Table displays orders");
        }
        else {
            System.out.println("Table does not exist");
        }
        driver.quit();
    }
}
