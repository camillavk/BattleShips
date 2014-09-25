class Game

	attr_accessor :players

	def initialize
		@players ||= [player1, player2]
	end

	def start!
		puts "Ready to start game!"
	end

end