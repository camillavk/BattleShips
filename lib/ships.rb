class Ship

	attr_reader :size, :name
	attr_accessor :damaged, :floating, :hit_points, :placed

	def initialize(size, name, damaged, floating, hit_points, placed)
		@size = size
		@name = name
		@damaged = false
		@floating = true
		@hit_points = hit_points
		@placed = false
	end

	def hit!
		raise "No battleship here!" if @floating == false
		@hit_points -= 1
		@damaged = true 
		sink! if hit_points == 0
		'boom'
	end

	def placed?
		@placed
	end

	def place!
		@placed = true
	end

	def damaged?
		@damaged
	end

	def sink!
		@floating = false
		puts "Byebye ship :("
	end

	def sunk?
		!@floating
	end

	def self.patrol_boat
		new(2, :patrol_boat, false, true, 2, false)
	end

	def self.aircraft_carrier
		new(5, :aircraft_carrier, false, true, 5, false)
	end

	def self.battleship
		new(4, :battleship, false, true, 4, false)
	end

	def self.submarine
		new(3, :submarine, false, true, 3, false)
	end

	def self.destroyer
		new(3, :destroyer, false, true, 3, false)
	end

end







