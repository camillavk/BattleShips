class Game

	attr_accessor :players, :player1, :player2

	def initialize
		@players ||= [player1, player2]
	end

	def start!
		puts "Ready to start game!"
	end

	def lose?
		@lose == true 
	end

end