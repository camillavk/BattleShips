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
	else 
		return false
	end

	def shoot!
		@shot_at = true
	end

	def shot_at?
		@shot_at
	end

	def attack_result
		return "splash!" if no_ship?
	else
		return "boom!"
	end

	def content
		return 'S' if no_ship? == false && !shot_at?
		return '~' if no_ship? == true && !shot_at?
		return 'X' if no_ship? == false && shot_at 
		return 'O' if no_ship? == true && shot_at 
	end

end