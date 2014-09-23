require 'board'

class OpponentBoard

	include Board

def hit(x,y)
	raise "Sorry, better luck next time!" if grid[x][y] != "occupied"
	raise "Congratulations, you've hit a ship!" if grid[x][y] = "occupied"
end

end