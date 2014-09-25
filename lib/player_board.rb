require_relative 'board'

class PlayerBoard

	include Board

	def set(ship, cell)
		self.access(cell).place(ship)
	end

end