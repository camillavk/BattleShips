module Board

attr_accessor :grid

	def initialize
		@grid = ("A".."J").map{|x| (1..10).map {|y| x + y.to_s}}
	end

	def grid
		@grid
	end

	def square(x,y)
		@grid[x][y]
	end

	def set_square(x,y)
		grid[x][y] = "occupied"
	end


end