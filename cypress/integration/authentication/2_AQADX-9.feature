@AQADX-8
Feature: Test Exec Fumigatoires (Smoke) application Todo

	Background:
		#@PRECOND_AQADX-4
		Given browser is openened to the login page
		#@PRECOND_AQADX-10
		When user "demo" logs in with password "mode"
		Then welcome page should be opened

	@TEST_AQADX-9 @TESTSET_AQADX-7
	Scenario: Logout Successfully
		When user chooses to logout
		Then login page should be open