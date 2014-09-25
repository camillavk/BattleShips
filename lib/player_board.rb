require_relative 'board'

class PlayerBoard

	include Board

	def set(ship, cell)
		self.access(cell).place(ship)
	end

	def place(ship, cell)
		ship.size.times { set(ship, cell) }
	end



# def hit(x,y)
# 	raise "Phew, safe for now!" if grid[x][y] != "S"
# 	raise "Oh no, you've been hit!" if grid[x][y] = "S"
# end

end