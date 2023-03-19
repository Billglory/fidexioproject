@FIX10-257
Feature: Default

	#{color:#ff0000}*User Story :* {color}As a user, I should be able to log in so that I can land on homepage.
	#
	#_*Acceptance Criteria:*_
	#
	#{color:#ff0000}*1-Users can log in with valid credentials (We have 5 types of users but will test only 2 user: PosManager, SalesManager)*{color}
	#2-"Wrong login/password" should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#3- "Please fill out this field" message should be displayed if the password or username is empty
	#4-User lands on the ‘reset password’ page after clicking on the "Reset password" link
	#5-User should see the password in bullet signs by default
	#6- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	@FIX10-337
	Scenario: Verify user login with valid credentials
		When user enters username
		Then user enters password
		And user  clicks login button
		Then user logged in	

	#{color:#ff0000}*User Story :* {color}As a user, I should be able to log in so that I can land on homepage.
	#
	#_*Acceptance Criteria:*_
	#
	#1-Users can log in with valid credentials (We have 5 types of users but will test only 2 user: PosManager, SalesManager)
	#*{color:#ff0000}2-"Wrong login/password" should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials{color}*
	#3- "Please fill out this field" message should be displayed if the password or username is empty
	#4-User lands on the ‘reset password’ page after clicking on the "Reset password" link
	#5-User should see the password in bullet signs by default
	#6- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.
	@FIX10-338
	Scenario: Verify "Wrong login/password" should be displayed for invalid credentials.
		When  user enters wrong username
		Then user enters wrong password
		And user clicks login button
		Then user cannot login warning
		
		| user         | username                | password        |
		| posmanager   | posmanager15@info.com   | invalidpassword |
		| posmanager   | invalidusername         | posmanager      |
		| posmanager   | invalidusername         | invalidpassword |
		| salesmanager | salesmanager15@info.com | invalidpassword |
		| salesmanager | invalidusername         | salesmanager    |
		| salesmanager | invalidusername         | invalidpassword |	

	#{color:#ff0000}*User Story :* {color}As a user, I should be able to log in so that I can land on homepage.
	#
	#_*Acceptance Criteria:*_
	#
	#1-Users can log in with valid credentials (We have 5 types of users but will test only 2 user: PosManager, SalesManager)
	#2-"Wrong login/password" should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#{color:#ff0000}*3- "Please fill out this field" message should be displayed if the password or username is empty*{color}
	#4-User lands on the ‘reset password’ page after clicking on the "Reset password" link
	#5-User should see the password in bullet signs by default
	#6- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.

@FIX10-339
	 Scenario Outline: Verify empty field password or username is warning
		Given user is on the login page
		When user enters  <username>
		And user enters  <password>
		And user clicks on the log in button
		Then user should see the error message

		Examples:
			| user         | username                | password     |
			| posmanager   | posmanager15@info.com   |              |
			| posmanager   |                         | posmanager   |
			| salesmanager | salesmanager15@info.com |              |
			| salesmanager |                         | salesmanager |

	#{color:#ff0000}*User Story :* {color}As a user, I should be able to log in so that I can land on homepage.
	#
	#_*Acceptance Criteria:*_
	#
	#1-Users can log in with valid credentials (We have 5 types of users but will test only 2 user: PosManager, SalesManager)
	#2-"Wrong login/password" should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#3- "Please fill out this field" message should be displayed if the password or username is empty
	#4-User lands on the ‘reset password’ page after clicking on the "Reset password" link
	#{color:#ff0000}*5-User should see the password in bullet signs by default*{color}
	#6- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.

	@FIX10-340
	Scenario Outline: Verify user should see the password in bullet signs by default
		Given user is on the login page
		When user enters  <username>
		And user enters <password>
		Then user should not be able to see the password

		Examples:
			| username                | password     |
			| posmanager10@info.com   | posmanager   |
			| salesmanager10@info.com | salesmanager |

	#{color:#ff0000}*User Story :* {color}As a user, I should be able to log in so that I can land on homepage.
	#
	#_*Acceptance Criteria:*_
	#
	#1-Users can log in with valid credentials (We have 5 types of users but will test only 2 user: PosManager, SalesManager)
	#2-"Wrong login/password" should be displayed for invalid (valid username-invalid password and invalid username-valid password) credentials
	#3- "Please fill out this field" message should be displayed if the password or username is empty
	#4-User lands on the ‘reset password’ page after clicking on the "Reset password" link
	#5-User should see the password in bullet signs by default
	#{color:#ff0000}*6- Verify if the ‘Enter’ key of the keyboard is working correctly on the login page.*{color}
	@FIX10-341
	Scenario Outline: Verify the 'Enter' key works correctly on the login page
		Given user is on the login page
		When user enters  <username>
		And user enters  <password>
		And user clicks on the enter key
		Then user logged in the home page

		Examples:
			| user         | username                | password     |
			| posmanager   | posmanager15@info.com   | posmanager   |
			| posmanager   | posmanager16@info.com   | posmanager   |
			| salesmanager | salesmanager15@info.com | salesmanager |
			| salesmanager | salesmanager16@info.com | salesmanager |