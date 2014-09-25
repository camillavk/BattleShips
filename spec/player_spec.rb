require 'spec_helper'
require 'player'
require 'ships'

describe Player do 

	let(:player) { Player.new(true) }
	let(:aircraft_carrier) { double :aircraft_carrier }
	let(:battleship) { double :battleship }
	let(:submarine) { double :submarine }
	let(:destroyer) { double :destroyer }
	let(:patrol_boat) { double :patrol_boat, :floating? => true }
	let(:sunken_ship) { double :sunken_ship, :floating? => false }
	let(:player_board) { double :player_board, :ships => [] }
	let(:opponent_board) { double :opponent_board, :ships => [] }
	let(:game) { double :game }


	context "Own board" do 

		it "should start with five ships" do 
			expect(player.ship_count).to eq 5
		end

		# it "should be able to set boats on own board" do 
		# 	player.set(aircraft_carrier, player_board)
		# end

	end

	context "Opponent's board" do 
	
		# it "should be able to attack the opponent's board" do 
		# 	player.attack(square)
		# 	# expect(square).to be occupied empty
		# end

		# it "should be able to successfully land an attack" do 
		# 	player.attack(square)
		# 	# expect(attack(square)).to return "Hit!"
		# end

	end

	context "Gameplay" do 

		it "should no longer be my turn after attacking" do 
			player.attack(:square)
			expect(player.turn).to be false
		end

		# it "should let the game know that it has taken a turn" do 
		# 	expect(game).to receive(:add_turn)
		# 	player.attack(:square)
		# end


		it "should lose when it has only a sunken ship" do 
			player_board.ships << sunken_ship
			puts player_board.ships
			expect(!ships.any? { |ship| ship.floating? }).to eq true
			# expect(self.lose?).to eq true
			 # expect(player.lose?).to eq true
		end

	end

	

end
