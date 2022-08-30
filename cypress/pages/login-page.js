const CONSTANTS = require("../resources/text/constants");
import LoginResultsPage from './login-results-page';

class LoginPage {
  static visit() {
    cy.visit("/");
  }


  static enter_username(username) {
    cy.get(CONSTANTS.USERNAME_FIELD)
      .type(username);
  }

  static enter_password(password) {
    cy.get(CONSTANTS.PASSWORD_FIELD)
      .type(password);
  }

  static pressLogin() {
    cy.get(CONSTANTS.LOGIN_BUTTON).contains(CONSTANTS.LOGIN_TEXT)
      .click();
    return new LoginResultsPage();
  }

}

export default LoginPage;
