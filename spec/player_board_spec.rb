require 'player_board'

describe PlayerBoard do 

let (:player_board) {PlayerBoard.new}
let (:ship) {double :ship}

	it "should be able to set ships on cells" do 
		player_board.set(ship, "A4")
		expect(player_board.access("A4").ship_content).to eq ship
	end

	it "should know when a cell contains a ship" do 
		player_board.set(ship, "A5")
		expect(player_board.access("A5").no_ship?).to be false
	end

	it "should place a ship of size 3 into three horizontal cells" do
	end

	it "should place a ship of size 3 into three vertical cells" do
	end

end