class Cell

attr_reader :content

	def initialize
		@content = "water"
		@shot_at = false
	end

	# def content(value)
	# 	grid.status
	# end

	def place(ship)
		@content = ship
	end

	def shoot!
		@shot_at = true
		self.hit!
	end

	def shot_at?
		@shot_at
	end

	def hit!
		return "boom" if @content != "water"
		return "splash" if @content == "water"
	end

	def status
		return 'S' if @content != "water" && !shot_at?
		return ' ' if @content == "water" && !shot_at?
		return 'X' if @content != "water" && shot_at?
		return 'O' if @content == "water" && shot_at?
	end

end