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

When(/^I Enter two Names into The Form$/) do
  fill_in :player1name , :with => :player1name
  fill_in :player2name , :with => :player2name
  click_button 'Register'
end

When(/^I return to the home page$/) do
  expect(current_path).to eq('/')
end

Then(/^I Should see "(.*?)"$/) do |text|
  expect(page).to have_content "Ready to play"
end


