require_relative 'ships'

class Cell

attr_accessor :ship_content, :shot_at

	def initialize
		@shot_at = false
		@ship_content = nil
	end

	def place(ship)
		@ship_content = ship
	end

	def no_ship?
		return true if @ship_content == nil
		return false if @ship_content != nil
	end

	def shoot!
		@shot_at = true
	end

	def shot_at?
		@shot_at
	end

	def attack_result
		return "splash!" if no_ship?
		return "boom!" if !no_ship?
	end

	def display
		return 'S' if no_ship? == false && !shot_at?
		return ' ' if no_ship? == true && !shot_at?
		return 'X' if no_ship? == false && shot_at == true
		return 'O' if no_ship? == true && shot_at == true
	end

end