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

	def turn?
		@turn
	end

	def attack(square)
		# Here we will put a method to attack a square on the opponent's board
		@turn = false 
	end

end