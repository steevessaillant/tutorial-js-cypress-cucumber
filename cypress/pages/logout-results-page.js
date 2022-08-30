const CONSTANTS = require("../resources/text/constants");

class LogoutResultsPage {
    static expect() {
      return {
        toBeSuccessful: () => {
          cy.get(CONSTANTS.RESULT_HEADER).should('have.text', CONSTANTS.LOGIN_PAGE_TITLE)
        },
      };
    }
  }
  
  export default LogoutResultsPage;