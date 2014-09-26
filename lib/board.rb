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

	def access_multiple(cell1, cell2)
		@grid.fetch(cell1)
		@grid.fetch(cell2)
	end

end