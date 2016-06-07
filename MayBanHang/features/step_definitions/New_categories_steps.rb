Given(/^i already logged in as admin$/) do
  @current_user
end

Given(/^I should see "([^"]*)" button$/) do |app|
  expect(app).to have_content("Vào ứng dụng")
end

Given(/^I click "([^"]*)"$/) do |link|
  click_link(link)
end

When(/^I press add new category$/) do
  find('#addcate' , :visible => false).click
end


When(/^I press Vào ứng dụng I should see categories page$/) do 
  visit categories_path
end

  
When(/^I fill in the category form$/) do
  visit new_category_path
  fill_in "content", :with => "Fish"
  fill_in "description", :with => "dead"
  click_button "Create Category"
end


Then(/^I should see the annoucement "([^"]*)"$/) do |page|
  expect(page).to have_content("Category was successfully created.")
end



