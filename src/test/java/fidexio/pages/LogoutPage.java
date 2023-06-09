package fidexio.pages;

import fidexio.utilities.Driver;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.PageFactory;

public class LogoutPage {

public LogoutPage() {
        PageFactory.initElements(Driver.getDriver(),this);
    }

    @FindBy(xpath ="//span[@class='oe_topbar_name']")
    public WebElement profileMenu;

    @FindBy(linkText = "Log out")
    public WebElement logoutOption;

    @FindBy(className = "modal-title")
    public WebElement expiredAlert;
}
