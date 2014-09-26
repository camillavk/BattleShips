require 'game'
require 'player'

describe Game do 

	let(:game) { Game.new }
	let(:player_board){double :player_board}
	let(:opponent_board){double :opponent_board}
	let(:player1){double :player, board: player_board }
	let(:player2){double :player, board: opponent_board } 


	it "can have players added" do 
		game.add_player(player1)
		expect(game.player1).to eq player1
	end

	it "can have a second player added" do
		game.add_player(player1)
		game.add_player(player2)
		expect(game.player2).to eq player2
	end

	it "is ready to begin when there are two players" do 
		game.add_player(player1)
		game.add_player(player2)
		expect(game.has_two_players?).to eq true
	end

	it "knows when it doesn't have two players" do
		game.add_player(player1)
		expect(game.has_two_players?).to eq false
	end

	it "knows whos turn it is" do 
		game.add_player(player1)
		expect(game.turn).to eq(player1)
	end

context "game is ready" do

	before do
		game.add_player(player1)
		game.add_player(player2) 
	end

	it "can have an opponent" do 
		expect(game.opponent).to eq player2
	end

	it "can switch turns" do 
		game.switch_turns
		expect(game.turn).to eq player2
	end

	it "knows if there is a winner" do
		allow(opponent_board).to receive(:floating_ships?).and_return(false)
		expect(game.winner).to eq player1 
	end

end

end