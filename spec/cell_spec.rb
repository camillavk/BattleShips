require 'cell'
require 'ships'

describe Cell do 

	let (:cell) { Cell.new }
	let (:ship) { double :ship }

	it "should initially contain water" do
		expect(cell.ship_here?).to eq false
	end

	it "should be able to have a ship placed on it" do
		cell.place(ship)
		expect(cell.ship_here?).to eq true
	end

	it "should be able to be shot at" do
		cell.shoot!
		expect(cell.shot_at?).to be true
	end

	it "should return boom if a ship is hit" do
		cell.place(ship)
		cell.shoot!
		expect(cell.attack_result).to eq("boom!")
	end

	it "should return splash if water is hit" do
		cell.shoot!
		expect(cell.attack_result).to eq("splash!")
	end

	it "should display S if there is a ship and it has not been hit" do
		cell.place(ship)
		expect(cell.display).to eq("S")
	end


	it "should display a blank if there is water and it has not been hit" do
		expect(cell.display).to eq(" ")
	end

	it "should display O if there is water and it has been hit" do
		cell.shoot!
		expect(cell.display).to eq("O")
	end

	it "should display X if there is a ship and it has been hit" do
		cell.place(ship)
		allow(ship).to receive(:hit!).and_return(true)
		cell.shoot!
		expect(cell.display).to eq("X")
	end

end