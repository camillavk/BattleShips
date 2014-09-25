require 'game'
require 'player'

describe Game do 

	let(:game) { Game.new }
	let(:player1) { double :player1, :turn? => true, :lose => true}
	let(:player2) { double :player2, :turn? => false, :lose => false}


	it "should have two players" do
		game.start!
		expect(game.players.count).to eq 2
	end

	it "should know when a player has lost" do
		game.start!
		expect(player1.lose).to eq true
		expect(player2.lose).to eq false
	end 





end