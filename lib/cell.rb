require 'spec_helper'
require_relative 'ships'

class Cell

attr_reader :ship_here, :shot_at

	def initialize
		@ship_here = false
		@shot_at = false
	end

	def place(ship)
		@ship_here = true
	end

	def shoot!
		@shot_at = true
	end

	def ship_here?
		@ship_here
	end

	def shot_at?
		@shot_at
	end

	def attack_result
		return "splash!" if !ship_here?
		return "boom!" if ship_here? 
	end

	def display
		return 'S' if ship_here == true && !shot_at?
		return ' ' if ship_here == false && !shot_at?
		return 'X' if ship_here == true && shot_at == true
		return 'O' if ship_here == false && shot_at == true
	end

end