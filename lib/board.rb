require_relative 'cell'

module Board

attr_accessor :grid

	def initialize
		@grid = {}
			("A".."J").to_a.each do |letter|
			(1..10).to_a.each do |number|
			@grid["#{letter}#{number}"] = Cell.new
			end
		end
	end

	def access(cell)
		@grid.fetch(cell)
	end

	# def view_grid
	# 	grid.each do |r|
	# 		puts r.map { |p| p }.join("  ")
	# 	end
	# 	return "Your board" 
	# end

end








# 



	# def view_grid
	# 	grid.each do |r|
	# 		puts r.map { |p| p }.join("  ")
	# 	end
	# 	return nil 
	# end

