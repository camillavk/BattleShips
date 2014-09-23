class Ship

	attr_reader :size, :name
	attr_accessor :damaged, :floating, :hit_points

	def initialize(size, name, damaged, floating, hit_points)
		@size = size
		@name = name
		@damaged = false
		@floating = true
		@hit_points = hit_points
	end

	def self.patrol_boat
		new(2, :patrol_boat, false, true, 2)
	end

	def self.aircraft_carrier
		new(5, :aircraft_carrier, false, true, 5)
	end

	def self.battleship
		new(4, :battleship, false, true, 4)
	end

	def self.submarine
		new(3, :submarine, false, true, 3)
	end

	def self.destroyer
		new(3, :destroyer, false, true, 3)
	end

	def hit!
		raise "No battleship here!" if @floating == false
		@hit_points -= 1
		@damaged = true 
		sink! if hit_points == 0
	end

	def damaged?
		@damaged
	end

	def sink!
		@floating = false
		puts "You have sunk my battleship :("
	end

	def sunk?
		!@floating
	end

end







