@AQADX-8
Feature: Test Exec Fumigatoires (Smoke) application Todo

	Background:
		#@PRECOND_AQADX-4
		Given browser is openened to the login page

	@TEST_AQADX-5 @TESTSET_AQADX-7
	Scenario: Valid Login
		When user "demo" logs in with password "mode"
		Then welcome page should be opened