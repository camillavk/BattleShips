require_relative 'board'

class PlayerBoard

	include Board

	def set(ship, cell)
		self.access(cell).place(ship)
	end

	def set_a_boat_size_2(cell1, cell2, ship)
		self.access(cell1).place(ship)
		self.access(cell2).place(ship)
	end

	def set_a_boat_size_3(cell1, cell2, cell3, ship)
		self.access(cell1).place(ship)
		self.access(cell2).place(ship)
		self.access(cell3).place(ship)
	end

	def set_a_boat_size_4(cell1, cell2, cell3, cell4, ship)
		self.access(cell1).place(ship)
		self.access(cell2).place(ship)
		self.access(cell3).place(ship)
		self.access(cell4).place(ship)
	end

	def set_a_boat_size_5(cell1, cell2, cell3, cell4, cell5, ship)
		self.access(cell1).place(ship)
		self.access(cell2).place(ship)
		self.access(cell3).place(ship)
		self.access(cell4).place(ship)
		self.access(cell5).place(ship)
	end



end