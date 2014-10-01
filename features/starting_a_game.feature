Feature: Starting the game
	In order to play battleships
	As a nostalgic player
	I want to start a new game

	Scenario: Start the game
		Given I am on the homepage
		When I follow "New Player"
		Then I should see "What's your name?"

	Scenario: Initializing Player 1 and Player 2
		Given I Am On the New Player Page
		When I Enter two Names into The Form
		And I return to the home page
		Then I Should see "Ready to Play"


		