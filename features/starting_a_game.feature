Feature: Starting the game
	In order to play battleships
	As a nostalgic player
	I want to start a new game

	Scenario: Start the game
		Given I am on the homepage
		When I follow "New Player"
		Then I should see "What's your name, Player 1?"

	Scenario: Initializing Player 1 and Player 2
		Given I am on the new player page
		When I enter two names into the form
		And I return to the home page
		Then I should view "Ready to play"

	Scenario: Create the Boards
		Given both players are initialized
		When I click "Ready to Play"
		Then I should see two new boards on the game page