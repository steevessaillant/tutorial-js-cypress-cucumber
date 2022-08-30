const CONSTANTS = require("../resources/text/constants");


class LoginResultsPage {
    static expect() {
      return {
        toBeSuccessful: () => {
          cy.get(CONSTANTS.RESULT_HEADER).should('have.text', CONSTANTS.WELCOME_PAGE_TITLE)
        },

        toBeUnsuccessful: () => {
          cy.get(CONSTANTS.RESULT_HEADER).should('have.text', CONSTANTS.ERROR_PAGE_TITLE)
        },
      };
    }
  }
  
  export default LoginResultsPage;