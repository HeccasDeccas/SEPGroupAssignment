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

    @When("^submitting an incomplete form$")
    public void submitting_an_incomplete_form() throws Throwable {
        driver.findElement(By.id("submit")).click();
    }

    @Then("^system should show an error message when incomplete field$")
    public void system_should_show_an_error_message_when_incomplete_field() throws Throwable {
        boolean nameRequired = Boolean.parseBoolean(driver.findElement(By.name("name")).getAttribute("required"));
        boolean idRequired = Boolean.parseBoolean(driver.findElement(By.name("ID")).getAttribute("required"));
        boolean emailRequired = Boolean.parseBoolean(driver.findElement(By.name("email")).getAttribute("required"));
        boolean facultyRequired = Boolean.parseBoolean(driver.findElement(By.name("faculty")).getAttribute("required"));
        boolean productRequired = Boolean.parseBoolean(driver.findElement(By.name("product")).getAttribute("required"));
        boolean quantityRequired = Boolean.parseBoolean(driver.findElement(By.name("quantity")).getAttribute("required"));
        if (nameRequired && idRequired && emailRequired && facultyRequired && productRequired && quantityRequired) {
            System.out.println("Error message present");
        } else {
            System.out.println("Error message is not present");
        }
    }

    @When("^submitting a form with details not on file$")
    public void submitting_a_form_with_details_not_on_file() throws Throwable {
        driver.findElement(By.name("name")).sendKeys("Test Two");
        driver.findElement(By.name("ID")).sendKeys("123456");
        driver.findElement(By.name("email")).sendKeys("test@uts.com");
        driver.findElement(By.name("faculty")).click();
        driver.findElement(By.xpath("//*[contains(text(), 'UTS Business School')]")).click();
        driver.findElement(By.name("product")).click();
        driver.findElement(By.xpath("//*[contains(text(), 'Black Pen')]")).click();
        driver.findElement(By.name("quantity")).sendKeys("10");
        driver.findElement(By.id("submit")).click();
    }

    @Then("^system should show an error message$")
    public void system_should_show_an_error_message() throws Throwable {
        String errorTxt = driver.findElement(By.id("fieldError")).getText();
        if (errorTxt.equals("Matching Name and Staff ID do not exist in database.")) {
            System.out.println("Wrong details error present");
        } else {
            System.out.println("Wrong details has no error");
        }
        driver.findElement(By.tagName("button")).click();
    }

    @When("^submitting a form with incorrect name format$")
    public void submitting_a_form_with_incorrect_name_format() throws Throwable {
        driver.findElement(By.name("name")).sendKeys("123456");
        driver.findElement(By.name("ID")).sendKeys("123455");
        driver.findElement(By.name("email")).sendKeys("test@uts.com");
        driver.findElement(By.name("faculty")).click();
        driver.findElement(By.xpath("//*[contains(text(), 'UTS Business School')]")).click();
        driver.findElement(By.name("product")).click();
        driver.findElement(By.xpath("//*[contains(text(), 'Black Pen')]")).click();
        driver.findElement(By.name("quantity")).sendKeys("10");
        driver.findElement(By.id("submit")).click();
    }

    @Then("^system should show an invalid name message$")
    public void system_should_show_an_invalid_name_message() throws Throwable {
        String nametxt = driver.findElement(By.name("name")).getAttribute("value");
        if (nametxt.equals("Name format is incorrect.")
                && driver.findElement(By.xpath("//*[contains(text(), 'Invalid fields.')]")).isDisplayed()) {
            System.out.println("Name error present");
        } else {
            System.out.println("Name has no error");
        }
        driver.findElement(By.tagName("button")).click();
    }

    @When("^submitting a form with incorrect id format$")
    public void submitting_a_form_with_incorrect_id_format() throws Throwable {
        driver.findElement(By.name("name")).sendKeys("Test One");
        driver.findElement(By.name("ID")).sendKeys("Test");
        driver.findElement(By.name("email")).sendKeys("test@uts.com");
        driver.findElement(By.name("faculty")).click();
        driver.findElement(By.xpath("//*[contains(text(), 'UTS Business School')]")).click();
        driver.findElement(By.name("product")).click();
        driver.findElement(By.xpath("//*[contains(text(), 'Black Pen')]")).click();
        driver.findElement(By.name("quantity")).sendKeys("10");
        driver.findElement(By.id("submit")).click();
    }

    @Then("^system should show an invalid id message$")
    public void system_should_show_an_invalid_id_message() throws Throwable {
        String idtxt = driver.findElement(By.name("ID")).getAttribute("value");
        if (idtxt.equals("ID format is incorrect.")
                && driver.findElement(By.xpath("//*[contains(text(), 'Invalid fields.')]")).isDisplayed()) {
            System.out.println("ID error present");
        } else {
            System.out.println("ID has no error");
        }driver.findElement(By.tagName("button")).click();
    }

    @When("^submitting a form with incorrect email format$")
    public void submitting_a_form_with_incorrect_email_format() throws Throwable {
        driver.findElement(By.name("name")).sendKeys("Test One");
        driver.findElement(By.name("ID")).sendKeys("123456");
        driver.findElement(By.name("email")).sendKeys("test");
        driver.findElement(By.name("faculty")).click();
        driver.findElement(By.xpath("//*[contains(text(), 'UTS Business School')]")).click();
        driver.findElement(By.name("product")).click();
        driver.findElement(By.xpath("//*[contains(text(), 'Black Pen')]")).click();
        driver.findElement(By.name("quantity")).sendKeys("10");
        driver.findElement(By.id("submit")).click();
    }

    @Then("^system should show an invalid email message$")
    public void system_should_show_an_invalid_email_message() throws Throwable {
        String emailtxt = driver.findElement(By.name("email")).getAttribute("value");
        if (emailtxt.equals("Email format is incorrect.")
                && driver.findElement(By.xpath("//*[contains(text(), 'Invalid fields.')]")).isDisplayed()) {
            System.out.println("Email error present");
        } else {
            System.out.println("Email has no error");
        }
        driver.findElement(By.tagName("button")).click();
    }

    @When("^completing order form$")
    public void completing_order_form() throws Throwable {
        driver.findElement(By.name("name")).sendKeys("Test One");

    }

    @Then("^system should have both drop down options and text fields$")
    public void system_should_have_both_drop_down_options_and_text_fields() throws Throwable {
        if (driver.findElement(By.tagName("select")).isDisplayed() && driver.findElement(By.tagName("input")).isDisplayed()) {
            System.out.println("Both fields present");
        } else {
            System.out.println("One or more of the fields is not present");
        }
    }

    @When("^select product drop down$")
    public void select_product_drop_down() throws Throwable {
        driver.findElement(By.name("product")).click();
    }

    @Then("^system should have products including 'HB Pencil', 'Sticky Notes', 'Ruler', 'Plastic Sleeve' and 'Folder'$")
    public void system_should_have_products_including_HB_Pencil_Sticky_Notes_Ruler_Plastic_Sleeve_and_Folder() throws Throwable {
        if (driver.findElement(By.xpath("//*[contains(text(), 'HB Pencil')]")).isDisplayed()
                && driver.findElement(By.xpath("//*[contains(text(), 'Sticky Notes')]")).isDisplayed()
                && driver.findElement(By.xpath("//*[contains(text(), 'Ruler')]")).isDisplayed()
                && driver.findElement(By.xpath("//*[contains(text(), 'Plastic Sleeve')]")).isDisplayed()
                && driver.findElement(By.xpath("//*[contains(text(), 'Folder')]")).isDisplayed()) {
            System.out.println("Products are available");
        } else {
            System.out.println("Products are not present");
        }
    }

    @When("^submitting form$")
    public void submitting_form() throws Throwable {
        driver.findElement(By.name("ID")).sendKeys("123456");
        driver.findElement(By.name("email")).sendKeys("test@uts.com");
        driver.findElement(By.name("faculty")).click();
        driver.findElement(By.xpath("//*[contains(text(), 'UTS Business School')]")).click();
        driver.findElement(By.name("product")).click();
        driver.findElement(By.xpath("//*[contains(text(), 'Black Pen')]")).click();
        driver.findElement(By.name("quantity")).sendKeys("10");
        driver.findElement(By.id("submit")).submit();
    }

    @Then("^system should show a successful submission screen$")
    public void system_should_show_a_successful_submission_screen() throws Throwable {
        if (driver.getCurrentUrl().equals("https://sep-project-216707.appspot.com/formSubmitted.jsp")) {
            System.out.println("Submission screen successful");
        } else {
            System.out.println("Submission screen not present");
        }
        driver.quit();
    }
}
