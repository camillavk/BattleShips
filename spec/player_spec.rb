require 'spec_helper'
require 'player'
require 'ships'
require 'player_board'

describe Player do 

	let(:player) { Player.new(true, PlayerBoard.new) }
	let(:sunken_ship) { double :sunken_ship, :floating? => false }
	let(:game) { double :game }


	context "Own board" do 

		it "should start with five ships" do 
			expect(player.ship_count).to eq 5
		end

		it "should be able to access a cell" do 
			expect(player.player_board.access("A1").no_ship?).to eq true
			expect(player.player_board.access("A1").class).to eq Cell
		end

		it "should be able to place a ship in a cell" do 
			player.set("A1", "ship")
			expect(player.player_board.access("A1").no_ship?).to eq false
		end

	end

	context "Opponent's board" do 
	
		# it "should be able to attack the opponent's board" do 
		# 	player.attack(square)
		# 	# expect(square).to be occupied empty
		# end

	end

	context "Gameplay" do 

		it "should no longer be my turn after attacking" do 
			player.attack(:square)
			expect(player.turn).to be false
		end

		# it "should lose when it has only a sunken ship" do 
		# 	player_board.ships << sunken_ship
		# 	puts player_board.ships
		# 	expect(!ships.any? { |ship| ship.floating? }).to eq true
		# end

	end

	

end
