# This is the Capybara test file, which contains all the 
# step definitions that appears in the cucumber test file.

Given(/^I am on the First Name Guesser page$/) do
  visit 'http://first-name-guesser.herokuapp.com/'
end

Then(/^I should see "(.*?)"/) do |text|
  page.should have_content(text)
end

When(/^I fill in "(.*?)" with "(.*?)"/) do |element, text|
  fill_in(element, with: text)
end

When(/^I hit "(.*?)"/) do |button|
  find("button[type='submit']").click
end
