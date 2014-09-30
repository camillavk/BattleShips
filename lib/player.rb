class Player

	attr_accessor :ships, :player_board, :opponent_board

	def initialize
		@ships = []
		add(ships)
	end

	def add(ships)
		@aircraft_carrier = AircraftCarrier.new
		@battleship = Battleship.new
		@submarine = Submarine.new
		@destroyer = Destroyer.new
		@patrol_boat = PatrolBoat.new
		self.ships = [@aircraft_carrier, @battleship, @submarine, @destroyer, @patrol_boat]
	end

	def turn? # Player should only be able to attack on his turn
		@turn
	end

	def attack(square)
		puts "Missile under way"
		@turn = false  # Flips the player's turn attribute so other player can go
	end


end