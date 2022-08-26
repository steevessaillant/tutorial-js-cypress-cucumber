import { Given, When } from 'cypress-cucumber-preprocessor/steps';
import WelcomePage from '../../pages/welcome-page';
import LogoutResultsPage from '../../pages/logout-results-page';

Given(/^user is on the welcome page$/, () => {
  throw new Error("Implementation Pending");
  //WelcomePage.visit();
});

When('user chooses to logout', () => {
  throw new Error("Implementation Pending");
  //WelcomePage.pressLogout();
});

Then(/^login page should be open$/, () => {
  throw new Error("Implementation Pending");
  LogoutResultsPage.expect().toBeSuccessful();
});
