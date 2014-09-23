require 'spec_helper'
require 'player'

describe Player do 

	let(:player) { Player.new(true) }
	let(:aircraft_carrier) { double :aircraft_carrier }
	let(:battleship) { double :battleship }
	let(:submarine) { double :submarine }
	let(:destroyer) { double :destroyer }
	let(:patrol_boat) { double :patrol_boat }
	let(:player_board) { double :player_board, :ships => [] }
	let(:opponent_board) { double :opponent_board, :ships => [] }


	context "Own board" do 

		it "should start with five ships" do 
			expect(player.ship_count).to eq 5
		end

		it "should be able to set boats on own board" do 
			player.set(:aircraft_carrier)
			allow(player_board).to receive(:ship_count).and_return 1
			expect(player_board.ship_count).to eq 1
		end

		it "should no longer have boats that it has set down" do 
			player.set(:aircraft_carrier)
			expect(player.ships).to_not include :aircraft_carrier
		end

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

	

end