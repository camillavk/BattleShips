require 'cell'
# require 'water'
# require 'ships'

describe Cell do 

let (:cell) {Cell.new}
let (:ship) {double :ship}

	# it "should be initialize with water" do
	# 	expect(cell.content).to be 
	# end

	it "should be able to have a ship placed on it" do
		cell.place(ship)
		expect(cell.content).to eq(ship)
	end

	it "should be able to be shot at" do
		cell.shoot!
		expect(cell.shot_at?).to be true
	end

	# it "should return boom if a ship is hit" do
	# 	cell.place(ship)
	# 	cell.shoot!
	# 	expect(cell.hit!).to eq("boom")
	# end

	# it "should return splash if water is hit" do
	# 	cell.shoot!
	# 	expect(cell.hit!).to eq("splash")
	# end

	it "should be able to return the blank if there is water and it has not been hit" do
		expect(cell.status).to eq(" ")
	end

	it "should be able to return O if there is water and it has been hit" do
		cell.shoot!
		expect(cell.status).to eq("O")
	end

	it "should be able to return S if there is a ship and it has not been hit" do
		cell.place(ship)
		expect(cell.status).to eq("S")
	end

	it "should be able to return X if there is a ship and it has been hit" do
		cell.place(ship)
		allow(ship).to receive(:hit!).and_return(true)
		cell.shoot!
		expect(cell.status).to eq("X")
	end

end