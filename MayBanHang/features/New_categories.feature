Feature: Adding new categories
	As a user
	I want to add new products to update my restaurant
	so that I can show and sale them to the customer

	Scenario: Adding product's category
		Given i already logged in
			And I should see "Vào ứng dụng" button
		When I press Vào ứng dụng I should see categories page
			And I press "+"
			And I fill in the category form
		Then I should see the annoucement "Category was successfully created."



	

