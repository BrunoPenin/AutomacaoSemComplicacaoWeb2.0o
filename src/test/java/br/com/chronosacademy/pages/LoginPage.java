package br.com.chronosacademy.pages;

import br.com.chronosacademy.LoginMap;
import br.com.chronosacademy.core.Driver;
import org.openqa.selenium.support.PageFactory;

public class LoginPage {

   LoginMap loginMap;

    public LoginPage() {
        loginMap = new LoginMap();
        PageFactory.initElements(Driver.getDriver(),loginMap);
    }

    public void clickBtnLogin(){
        loginMap.btnLogin.click();
    }

    public void clickBtnFechar(){
        loginMap.btnFechar.click();
    }

    public void clickDivFechaModal(){
        loginMap.divFechaModal.click();
    }

    public void setInpUserName(String userName){
        loginMap.inputUserName.sendKeys(userName);

    }

    public void setInpPassword(String password){
        loginMap.inpPassword.sendKeys(password);
    }

    public void clickInpRemember(){
        loginMap.inpRemember.click();
    }
    public void clickBtnSignIn(){
        loginMap.btnSignIn.click();
    }

    public void clickLinkCreteAccount(){
        loginMap.linkCreteAccount.click();
    }

    public boolean isBtnSignIn(){
        return loginMap.btnSignIn.isEnabled();
    }


}
