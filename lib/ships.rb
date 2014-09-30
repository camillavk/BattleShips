class Ship

	attr_reader :size, :name
	attr_accessor :damaged, :floating, :hit_points

	def initialize
		@damaged = false
		@floating = true
		@placed = false
	end

	def hit!
		@hit_points -= 1
		sink! if hit_points == 0
	end

	def damaged?
		true if size != hit_points 
	end

	def sink!
		@floating = false
		puts "Byebye ship :("
	end

	def sunk?
		!@floating
	end

	def floating_ships?
		ships.any?{|ship|!ship.sunk?}
	end

end

class PatrolBoat < Ship 

	def initialize
		super
		@name = :patrol_boat
		@size = 2
		@hit_points = 2
	end

end

class AircraftCarrier < Ship
	def initialize
		super
		@name = :aircraft_carrier
		@size = 5
		@hit_points = 5
	end
end

class Battleship < Ship
	def initialize
		super
		@name = :battleship
		@size = 4
		@hit_points = 4
	end
end

class Submarine < Ship
	def initialize
		super
		@name = :submarine 
		@size = 3
		@hit_points = 3
	end
end

class Destroyer < Ship
	def initialize
		super
		@name = :destroyer
		@size = 3
		@hit_points = 3
	end
end




