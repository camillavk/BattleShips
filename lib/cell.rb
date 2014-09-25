require_relative 'water'
require_relative 'ships'

class Cell

attr_reader :content

	def initialize
		@content = Water.new
		@shot_at = false
	end

	def place(ship)
		@content = ship
	end

	def shoot!
		@shot_at = true
		@content.hit!
	end

	def shot_at?
		@shot_at
	end

	def status
		return 'S' if @content.class != Water && !shot_at?
		return '~' if @content.class == Water && !shot_at?
		return 'X' if @content.class != Water && shot_at?
		return 'O' if @content.class == Water && shot_at?
	end

end