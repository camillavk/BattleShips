require 'opponent_board'
require 'board'

describe OpponentBoard do 

let (:opponent_board) {OpponentBoard.new}
let (:ship) {double :ship}

	# it "should know if a square is occupied" do
	# 	allow(ship).to receive(:set_square).and_return(:occupied)
	# 	opponent_board.set_square(0,0)
	# 	expect(opponent_board.square(0,0)).to eq("S")
	# end

	# it "should alert the player when they have missed a ship" do
	# 	expect(lambda{opponent_board.hit(1,1)}).to raise_error"Sorry, better luck next time!"
	# end

	# it "should alert the player when they have hit a ship" do
	# 	opponent_board.set_square(2,2)
	# 	expect(lambda{opponent_board.hit(2,2)}).to raise_error"Congratulations, you've hit a ship!"
	# end

end