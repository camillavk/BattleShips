require_relative 'board'

class PlayerBoard

	include Board

def hit(x,y)
	raise "Phew, safe for now!" if grid[x][y] != "S"
	raise "Oh no, you've been hit!" if grid[x][y] = "S"
end

end