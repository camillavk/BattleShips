Feature: Starting the game
	In order to play battleships
	As a nostalgic player
	I want to start a new game

	Scenario: Start the game
		Given I am on the homepage
		When I follow "New Player"
		Then I should see "What's your name?"

	Scenario: Initializing Player 1
		Given I Am On the New Player Page
		When I Enter My Name into The Form
		Then I Should See "Hello Tim"

	Scenario: Initializing Player 2
		Given I am on the New Player Page
		When I enter my name into the form
		Then I should see "Hello Hadi" 

		