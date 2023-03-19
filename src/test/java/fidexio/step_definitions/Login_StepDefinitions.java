package fidexio.step_definitions;


import fidexio.pages.LoginPage;
import fidexio.utilities.BrowserUtils;
import fidexio.utilities.ConfigurationReader;
import fidexio.utilities.Driver;
import io.cucumber.java.en.And;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import org.junit.Assert;
import org.openqa.selenium.Keys;
public class Login_StepDefinitions {

     LoginPage login = new LoginPage();

@Given("user is on the login page")
public void user_is_on_the_login_page() {
     Driver.getDriver().get("https://qa.fidexio.com/");}

   @When("{string} enter username {string} and password {string}")
    public void user_enters_valid_into_username_input_box(String string, String username, String password) {
    login.inputUsername.sendKeys(username);
       login.inputPassword.sendKeys(password);

        }

        @When("user clicks Log in button")
public void user_clicks_log_in_button() {
 login.loginButton.click();
}
@Then("user land on the home page")
public void user_land_on_the_home_page() {
   BrowserUtils.verifyTitle("#Inbox - Odoo");
}


   @When("user enters invalid {string} or invalid {string}")
    public void userEntersInvalidOrInvalid(String username, String password) {
        login.inputUsername.sendKeys(username);
        login.inputPassword.sendKeys(password);
    }


    @Then("Wrong login password message should be displayed")
    public void wrongLoginPasswordMessageShouldBeDisplayed() {
        Assert.assertTrue(login.wrongAlertMessage.isDisplayed());
        Assert.assertEquals("Wrong login/password", login.wrongAlertMessage.getText());

    }

    @When("user does not enter {string} or {string}")
    public void userDoesNotEnterOr(String username, String password) {
        login.inputUsername.sendKeys(username);
        login.inputPassword.sendKeys(password);

    }

    @Then("Please fill out this field message should be displayed")
    public void pleaseFillOutThisFieldMessageShouldBeDisplayed() {
        login.inputUsername.getAttribute("validationMessage");
        login.inputPassword.getAttribute("validationMessage");

    }

    @And("user enters valid {string} password input box")
    public void userEntersValidPasswordInputBox(String password) {
        login.inputPassword.sendKeys(password);
    }

    @And("user clicks on the enter key on keyboard")
    public void userClicksOnTheEnterKeyOnKeyboard() {
        login.inputPassword.sendKeys(Keys.ENTER);
    }

    @Then("user should see password in bullet signs")
    public void userShouldSeePasswordInBulletSigns() {
        Assert.assertTrue(login.inputPassword.getAttribute("type").equals("password"));
    }
}
