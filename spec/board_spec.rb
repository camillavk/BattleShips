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
		expect(board.square("A1")).to eq("A1")
	end

	# it "should be able to access content of individual squares" do
	# 	expect(board.content("A1")).to eq(" ")
	# end

end

	# it "should change if it is occupied" do
	# 	allow(ship).to receive(:set_square).and_return(:occupied)
	# 	board.set_square("C1")
	# 	expect(board.square("C1")).to eq("S")
	# end

	# it "should return miss if it is not occupied" do
	# 	expect(board.cell("B1")).to eq("Miss")
	# end

	# it "should return hit if it is occupied" do
	# 	board.set_square("A1")
	# 	expect(board.cell("A1")).to eq("Hit")
	# end


# 		x.each do |r|
#   puts r.map { |p| p }.join(" ")


