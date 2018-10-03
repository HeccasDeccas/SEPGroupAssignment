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
public class RequestTest {

    WebDriver driver;

    @Given("^UTS Staff Member logs in$")
    public void uts_Staff_Member_logs_in() throws Throwable {
        Class<? extends WebDriver> driverClass = ChromeDriver.class;
        WebDriverManager.getInstance(driverClass).setup();
        driver = driverClass.newInstance();
        driver.navigate().to("https://sep-project-216707.appspot.com/");
        driver.findElement(By.name("ID")).sendKeys("123456");
        driver.findElement(By.name("password")).sendKeys("blahblah123");
        driver.findElement(By.id("Login")).click();
    }

    @When("^completing order form$")
    public void completing_order_form() throws Throwable {
        driver.findElement(By.name("name")).sendKeys("Test ing");

    }

    @Then("^system should have both drop down options and text fields$")
    public void system_should_have_both_drop_down_options_and_text_fields() throws Throwable {
        if (driver.findElement(By.tagName("select")).isDisplayed() && driver.findElement(By.tagName("input")).isDisplayed()) {
            System.out.println("Both fields present");
        } else {
            System.out.println("One or more of the fields is not present");
        }
    }

    @When("^submitting an incomplete form$")
    public void submitting_an_incomplete_form() throws Throwable {
    }

    @Then("^system should show an error message when incomplete field AND when input is invalid$")
    public void system_should_show_an_error_message_when_incomplete_field_AND_when_input_is_invalid() throws Throwable {
        driver.quit();
    }
}
