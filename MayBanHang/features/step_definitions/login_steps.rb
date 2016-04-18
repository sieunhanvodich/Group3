Given(/^I am on the hompage$/) do
  visit root_path
end

Given(/^I click on "([^"]*)" button$/) do |link|
  click_link(link)
end

Given(/^I fill in the login form$/) do
  visit login_path
  fill_in "Email", :with => "nguyenminhduc1803@gmail.com"
  fill_in "Password", :with => "123456"
  click_button "Đăng nhập"
end

