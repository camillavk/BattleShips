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
	

end
