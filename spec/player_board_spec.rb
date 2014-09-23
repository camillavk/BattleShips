require 'player_board'
require 'board'

describe PlayerBoard do 

let (:player_board) {PlayerBoard.new}
let (:ship) {double :ship}

	it "should alert the player when they have been hit" do 
		player_board.set_square(1,1)
		expect(lambda{player_board.hit(1,1)}).to raise_error"Oh no, you've been hit!"
	end

	it "should alert the player when they have been missed" do
		expect(lambda{player_board.hit(0,0)}).to raise_error"Phew, safe for now!"
	end

end