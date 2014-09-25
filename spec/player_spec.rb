require 'spec_helper'
require 'player'
require 'ships'
require 'player_board'

describe Player do 

	let(:player) { Player.new }
	let(:sunken_ship) { double :sunken_ship, :floating? => false }
	let(:game) { double :game }


	it "should start with five ships" do 
		expect(player.ships.count).to eq 5
	end


	context "Gameplay" do 

		it "should no longer be my turn after attacking" do 
			player.attack(:square)
			expect(player.turn).to be false
		end

	end

	

end
