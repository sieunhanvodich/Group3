Given(/^I am on the homepage$/) do
  visit root_path
end

Given(/^I press on "([^"]*)" button$/) do |link|
	click_link(link) 
end

Given(/^I am on the signup form$/) do
  visit signup_path
end

When(/^I fill in signup form$/) do
  visit signup_path
  fill_in "First name", :with => "Duc"
  fill_in "Last name", :with => "Minh"
  fill_in "Email", :with => "nguyenminhduc1803@gmail.com"
  fill_in "Password", :with => "123456"
end

When(/^I press "([^"]*)" button$/) do |button|
  click_button(button)
end

Then(/^I should see the homepage with "([^"]*)" button$/) do |page|
  expect(page).to have_content("Đăng xuất")
end
