# Battleships in the Browser

```
Feature: Starting the game
  In order to play battleships
  As a nostalgic player
  I want to start a new game
```

### Instructions

In Week 2, we built back-end logic for Battleships using OOD in Ruby. In Week 3, our task was to build a playable frontend in Sinatra.

### Technologies

* Ruby
* Sinatra
* Cucumber
* Capybara
* RSpec
* HTML5 & Embedded Ruby
* CSS3
* Heroku

### Learning Objectives

* Working in teams
* Scoping a project
* Test-Driven Development
* Behavior-Driven Development
* Features testing in Cucumber
* Object-Oriented Design
* Encapsulation
* Design Patterns
* SOLID Principles

### User Story Overview

Battleships is a classic game where each player has a board upon which they can place a number of ships. The boards are 10x10 two dimensional grids.

After each player has placed their ships on their own board they take turns to shoot on the opponents board. The opponent announces whether or not the square is occupied by a ship, and if it is a hit they mark this on their own primary grid. The attacking player notes the hit or miss on their own tracking grid, in order to build up a picture of the opponent's fleet.

When all of one player's ships have been hit the game finishes and the player who has ships remaining is the winner.

### To Do

We ran out of time to complete the browser implementation of the game. In our most updated version, the player can login, initiate a new session, and place ships on a board.

Tasks remaining:

* Automate ship placement for size of ship
* Implement sessions for two players
* Shoot at square on opponent's board
* Finish porting game logic to front end
