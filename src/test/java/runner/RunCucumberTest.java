/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package runner;

/*import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;*/
import org.junit.runner.RunWith;
import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;

/**
 *
 * @author declan Schillert & Ashleigh Wan
 */
@RunWith(Cucumber.class)
@CucumberOptions(
features = "src/test/java/features/test",
glue = {"runner"},
plugin = { "pretty", "html:target/cucumber"})
/*package cucumberJava;

import org.junit.runner.RunWith; 
import cucumber.junit.Cucumber; 

@RunWith(Cucumber.class) 
@Cucumber.Options(format = {"pretty", "html:target/cucumber"}) 
"json:StationarySystem/cucumber.json"*/
public class RunCucumberTest { }
