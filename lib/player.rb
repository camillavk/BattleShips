class Player

	attr_accessor :ships, :turn, :win,
	 :aircraft_carrier, :battleship, :submarine,
	  :destroyer, :patrol_boat,
	   :player_board, :opponent_board

	def initialize(turn, its_yo_board)
		@ships ||= []
		@turn = turn 
		@win = false
		@player_board = its_yo_board
		@opponent_board ||= []
		add(ships)
	end

	def add(ships)
		@aircraft_carrier = Ship.aircraft_carrier
		@battleship = Ship.battleship
		@submarine = Ship.submarine
		@destroyer = Ship.destroyer
		@patrol_boat = Ship.patrol_boat
		self.ships = [@aircraft_carrier, @battleship, @submarine, @destroyer, @patrol_boat]
	end

	def ship_count
		ships.count 
	end


	def turn? # Player should only be able to attack on his turn
		@turn
	end

	def attack(square)
		puts "Missile under way"
		# game.add_turn # This will need to be synced with the game's turn count method
		@turn = false  # Flips the player's turn attribute so other player can go
	end

	def lose?
		!(ships.any? { |ship| ship.floating? })
	end

	def set(cell, ship)
		player_board.grid.fetch(cell).place(ship)
		# ship.place!
	end






end