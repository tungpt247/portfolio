Given(/^I am on Amazon homepage$/) do
  visit "http://www.amazon.com"
end

When(/^I enter "(.*?)" in the search box$/) do |keywords|
  fill_in "Search", :with => keywords
end

When(/^I click "(.*?)" button$/) do |arg1|
  click_button "Go"
end

Then(/^I should see a list of results related with Baseball Gloves$/) do
  page.should have_css('#atfResults ul#s-results-list-atf')
end
