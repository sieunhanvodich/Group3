Feature: Log in function
 	As a product manager
	I want users to login to use the application
	So that they can protect their privacy

	Scenario: Login to the application
		Given I am on the hompage
			And I click on "Đăng nhập" button
			And I fill in the form
		When I press "Đăng nhập"
		Then I should see the homepage
