class Player

	attr_accessor :ships, :player_board, :opponent_board, :turn

	def initialize(turn)
		@ships = [:aircraft_carrier, :battleship, :submarine, :destroyer, :patrol_boat]
		@player_board = []
		@opponent_board = []
		@turn ||= false
	end

	def ship_count
		ships.count 
	end

	def set(ship)
		player_board << ships.delete(ship)
	end

	def turn? # Player should only be able to attack on his turn
		@turn
	end

	def attack(square)
		return "Hit!" if square == occupied
		return "You missed!" if square == empty
		@turn = false  # Flips the player's turn attribute so other player can go
		# I realize that we don't have a way to 'give' the turn to the opponent
	end



end