require_relative 'board'

class PlayerBoard

	include Board

	def set(ship, cell)
		self.access(cell).place(ship)
	end

	def set_a_boat_size_2(ship, cell)
		self.access(cell).place(ship)
		self.access(cell.next).place(ship)
	end

	def set_a_boat_size_3(ship, cell)
		self.access(cell).place(ship)
		self.access(cell.next).place(ship)
		self.access(cell.next.next).place(ship)
	end

end