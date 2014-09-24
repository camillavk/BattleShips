module Board

attr_accessor :grid

	def initialize
		@grid = ("A".."J").map{|x| (1..10).map {|y| x + y.to_s}}
	end

	def square(x,y)
		grid[x][y]
	end

	def set_square(x,y)
		grid[x][y] = "occupied"
	end

	def cell(value)
		grid.each do |item|
			if item.include? value
				return value
			end
		end
	end

	def view_grid
		grid.each do |r|
			puts r.map { |p| p }.join("  ")
		end
		return nil 
	end


end