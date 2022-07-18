package com.nttdata.testframework.salesforce.cucumber;


import cucumber.api.CucumberOptions;
import cucumber.api.junit.Cucumber;
import org.junit.runner.RunWith;



@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"html:target/testResult/basic-cucumber-report", "json:target/testResult/basic-report/cucumber.json", "pretty:target/testResult/basic-report/cucumber-pretty.txt", "usage:target/testResult/basic-report/cucumber-usage.json", "junit:target/testResult/basic-report/cucumber-results.xml"},


        features = "src/test/resources/features/android/GPT_BilledRevenue.feature",
        /*features =
                /*enterpriseIndustrialisationUnifiedCommunicationAndGamma.feature"src/test/resources/features/android/enterpriseIndustrialisationDrop2.feature",
        "src/test/resources/features/android/enterpriseIndustrialisationUnifiedcommunication2.feature",
        {"src/test/resources/features/android/enterpriseIndustrialisationUnifiedCommunicationAndGamma.feature",
        "src/test/resources/features/android/enterpriseIndustrializationDigitalWorkplace.feature" },*/
        glue = "com/nttdata/testframework/salesforce/cucumber/glue/stepdefinitions",
        tags = ""
)

public class RunCucumberTest {

}