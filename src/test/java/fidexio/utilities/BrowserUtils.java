package fidexio.utilities;

//loginUrl = https://qa.fidexio.com

import org.junit.Assert;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

public class BrowserUtils {

    public static void verifyTitle(String expectedTitle) {

        WebDriverWait wait = new WebDriverWait(Driver.getDriver(), 5);
        wait.until(ExpectedConditions.titleIs(expectedTitle));
        Assert.assertTrue(Driver.getDriver().getTitle().equals(expectedTitle));

    }
}