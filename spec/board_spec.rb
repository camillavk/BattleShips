require 'board'
require 'ships'
require 'spec_helper'
require 'cell'

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

	it "should be able to access a cell" do 
		expect(board.access("A1").class).to be Cell
	end

	it "should know that when a ship is not in a cell" do 
		expect(board.access("A1").no_ship?).to be true
	end

	it "should know that two cells are empty" do 
		expect(board.access_multiple("A1", "A2").no_ship?).to be true
	end

end
