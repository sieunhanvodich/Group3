Feature: Adding new tables
	As a restaurant manager
	I want to add new table to update my restaurant
	so that I can expand my business

	Scenario: Adding table
		Given i already logged in as admin
			And I should see "Vào ứng dụng" button
		When I press Vào ứng dụng I should see categories page
			