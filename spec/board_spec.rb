require 'board'

class Grid 
	include Board
end

describe Board do 

let (:board) {Grid.new}
let (:ship) {double :ship}

	it "is initialized as a grid" do
		expect(board.grid).to be_kind_of(Array)
	end

	it "should be able to access individual squares" do
		expect(board.square(0,0)).to eq("A1")
	end

	it "should change if it is occupied" do
		allow(ship).to receive(:set_square).and_return(:occupied)
		board.set_square(0,0)
		expect(board.square(0,0)).to eq("occupied")
	end

end