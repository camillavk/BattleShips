require 'cell'

module Board

attr_accessor :grid

def initialize
	@grid = {}
	@grid = ("A".."J").to_a.each do |letter|
			(1..10).to_a.each do |number|
			grid["#{letter}#{number}"] = Cell.new
		end
	end
end

def square(value)
	value
end

end

# class Water
# 	def hit!
# 		'splash'
# 	end
# end


	# def set_square(value)
	# 	grid.each do |item|
 #      if item.include? value
 #        then item = "S"
 #      end
 #      	# return item
 #    # return "S"
 #  	end
	# end

	# def position(value)
	# 	grid.each do |item|
	# 		if item.include? value
	# 			return value
	# 		end
	# 	end
	# end

	# def cell(value)
	# 	grid.each do |item|
	# 		if item.include? value
	# 			return "Miss"
	# 		end
	# 		if item.include? "S"
	# 			return "Hit"
	# 		end
	# 	end
	# end

	# def view_grid
	# 	grid.each do |r|
	# 		puts r.map { |p| p }.join("  ")
	# 	end
	# 	return nil 
	# end

