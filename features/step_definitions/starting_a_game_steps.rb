Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I follow "(.*?)"$/) do |link|
	click_link link
end

Then(/^I should see "(.*?)"$/) do |text|
	expect(page).to have_content "What's your name, Player 1?"
end

Given(/^I Am On the New Player Page$/) do
  visit '/new_player'
end

When(/^I Enter My Name into The Form$/) do
 fill_in :player1 , :with => :player1
end

Then(/^I Should See "(.*?)"$/) do |player1|
  expect(page).to have_content @name
end

Given(/^I Am On the New Player Page$/) do
  visit '/new_player'
end

When(/^I Enter My Name into The Form$/) do
 fill_in :player2 , :with => :player2
end

Then(/^I Should See "(.*?)"$/) do |player2|
  expect(page).to have_content @name
end

