Given(/^I am on the homepage$/) do
  visit '/'
end

When(/^I follow "(.*?)"$/) do |link|
  click_link link
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content "What's your name, Player 1?"
end

 Given(/^I am on the new player page$/) do
  visit '/new_player'
end

 When(/^I enter two names into the form$/) do
  fill_in :player1name , :with => :player1name
  fill_in :player2name , :with => :player2name
  click_button 'Register'
end

When(/^I return to the home page$/) do
  expect(current_path).to eq('/')
end

Then(/^I should view "(.*?)"$/) do |message|
  expect(page).to have_content "Ready to play"
end

Given(/^both players are initialized$/) do
  visit '/new_player'
  fill_in :player1name , :with => :player1name
  fill_in :player2name , :with => :player2name
  click_button 'Register'
end


When(/^I click "(.*?)"$/) do |link|
  expect(current_path).to eq('/')
  click_link 'Ready to play'
end

Then(/^I should see two new boards on the game page$/) do
  pending # express the regexp above with the code you wish you had
end