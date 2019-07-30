require 'selenium-webdriver'

Given /^user is on Google.com home_page$/ do
  @browser = Selenium::WebDriver.for :chrome
  @browser.navigate.to 'http://www.google.com'
end

When /^user input "(.*)" to the search box$/ do |item|
	@browser.find_element(:name, 'q').send_keys(item)
end

And /^click Search Button$/ do
	@browser.action.send_keys(:enter).perform
end

Then /^user see wiki_description of "(.*)" on first search_result_page$/ do |item|
	expect(@browser.title).to include(item)
end

