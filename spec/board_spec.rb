require 'board'
require 'ships'
require 'spec_helper'

class Grid 
	include Board
end

describe Board do 

let (:board) {Grid.new}
let (:ship) {Ship.battleship}

	it "is initialized as a grid" do
		expect(board.grid).to be_kind_of(Hash)
	end

	it "should be able to find a cell" do 
		expect(board.grid.fetch("B2").class).to be Cell
	end

	# it "should know if it has a ship" do 
	# 	board.grid.fetch("B6").ship_here!
	# 	expect(board.grid.fetch("B6").ship_here?).to eq true
	# end

	it "should be able to access a cell" do 
		expect(board.access("A1").class).to be Cell
	end

	




end




# 		x.each do |r|
#   puts r.map { |p| p }.join(" ")


