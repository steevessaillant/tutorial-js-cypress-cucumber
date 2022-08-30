const CONSTANTS = require("../resources/text/constants");
import LoginPage from './login-page';


class WelcomePage {
  static visit() {
    cy.visit('/welcome.html');
  }


  static pressLogout() {
    cy.get(CONSTANTS.LOGOUT_LINK).contains(CONSTANTS.LOGOUT_TEXT)
      .click();
    return new LoginPage();
  }

}

export default WelcomePage;
