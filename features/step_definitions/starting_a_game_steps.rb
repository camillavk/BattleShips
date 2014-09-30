Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I follow "(.*?)"$/) do |link|
	click_link link
end

Then(/^I should see "(.*?)"$/) do |text|
	expect(page).to have_content text
end

Given(/^I Am On the New Player Page$/) do
  visit '/new_player'
end

When(/^I Enter My Name into The Form$/) do
 fill_in :player_name , :with => :player_name
end

Then(/^I Should See "(.*?)"$/) do |player_name|
  expect(page).to have_content @name
end