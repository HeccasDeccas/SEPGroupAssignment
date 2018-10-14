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
public class ReceptionistTest {

    WebDriver driver;

    @Given("^Receptionist fills in login details$")
    public void receptionist_fills_in_login_details() throws Throwable {
        Class<? extends WebDriver> driverClass = ChromeDriver.class;
        WebDriverManager.getInstance(driverClass).setup();
        driver = driverClass.newInstance();
        driver.navigate().to("https://sep-project-216707.appspot.com/");
        driver.findElement(By.name("ID")).sendKeys("111222");
        driver.findElement(By.name("password")).sendKeys("football555");
    }

    @When("^selects login button$")
    public void selects_login_button() throws Throwable {
        driver.findElement(By.id("Login")).click();

    }

    @Then("^system should process login and direct to the dashboard$")
    public void system_should_process_login_and_direct_to_the_dashboard() throws Throwable {
        if (driver.getCurrentUrl().equals("https://sep-project-216707.appspot.com/receptionistDashboard.jsp")) {
            System.out.println("Receptionist sees dashboard");
        } else {
            System.out.println("Dashboard is not present");
        }

    }

    @Then("^dashboard should contain 'Request Form' and 'View All Stationery Requests' buttons$")
    public void dashboard_should_contain_Request_Form_and_View_All_Stationery_Requests_buttons() throws Throwable {
        if (driver.findElement(By.xpath("//*[contains(text(), 'Request Form')]")).isDisplayed()
                && driver.findElement(By.xpath("//input[@value='View All Stationery Requests']")).isDisplayed()) {
            System.out.println("Buttons present on dashboard");
        } else {
            System.out.println("Buttons are not present");
        }
    }

    @When("select 'View all stationary requests button'$")
    public void select_View_all_stationary_requests_button() throws Throwable {
        driver.findElement(By.xpath("//input[@value='View All Stationery Requests']")).click();
    }

    @Then("^system should show a table of the orders with a status column reading 'pending', 'underway', 'shipped' and 'complete'$")
    public void system_should_show_a_table_of_the_orders_with_a_status_column_reading_pending_in_progress_in_transit_and_complete() throws Throwable {
        if (driver.findElement(By.xpath("//*[contains(text(), 'Pending')]")).isDisplayed()
                && driver.findElement(By.xpath("//*[contains(text(), 'Underway')]")).isDisplayed()
                && driver.findElement(By.xpath("//*[contains(text(), 'Shipped')]")).isDisplayed()
                && driver.findElement(By.xpath("//*[contains(text(), 'Complete')]")).isDisplayed()) {
            System.out.println("Status' present");
        } else {
            System.out.println("Status' not present");
        }

        driver.quit();
    }

}
