package fidexio.step_definitions;

import fidexio.pages.LoginPage;
import fidexio.pages.LogoutPage;
import fidexio.utilities.BrowserUtils;
import fidexio.utilities.Driver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;

public class Logout_StepDefinitions {
 LogoutPage logoutPage =new LogoutPage();
    LoginPage loginPage = new LoginPage();
    @Given("user logs in and on the home page")
    public void userLogsInAndOnTheHomePage() {
        loginPage.loginMethod();
    }

    @When("User clicks profile name")
    public void userClicksProfileName() {
        logoutPage.profileMenu.click();

    }

    @And("User clicks the Log out button.")
    public void userClicksTheButton() {
        logoutPage.logoutOption.click();
    }

    @Then("User lands on the login page")
    public void userLandsOnTheLoginPage() {
        BrowserUtils.verifyTitle("Login | Best solution for startups");
    }

    @And("User clicks go back button on login page")
    public void userClicksGoBackButtonOnLoginPage() {
        Driver.getDriver().navigate().back();
    }

    @Then("User can not access the home page again")
    public void userCanNotAccessTheHomePageAgain() {
        Assert.assertTrue(logoutPage.expiredAlert.isDisplayed());
    }

    @And("user  clicks login button")
    public void userClicksLoginButton() {

    }
}
