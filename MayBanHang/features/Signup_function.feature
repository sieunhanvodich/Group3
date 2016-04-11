Feature: Signup function
	As a product manager
	I want our users to signup if they want to use the application
	So that they can protect their privacy

	Scenario: Signup to use the application
		Given I am on the homepage
			And I press on "Signup" button
			And I am on the signup form
		When I fill in signup form
			And I press "Signup" button
		Then I should see the homepage