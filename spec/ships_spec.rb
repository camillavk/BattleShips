require 'spec_helper'
require 'ships'

describe Ship do 

	let(:ship) { Ship.new(:size, :name, :damaged, :floating, 5) }

	context "ship sizes" do 

		it "patrol boat should have size 2" do 
			patrol_boat = Ship.patrol_boat
			expect(patrol_boat.size).to be 2
		end

		it "aircraft carrier should have size 5" do
			aircraft_carrier = Ship.aircraft_carrier
			expect(aircraft_carrier.size).to be 5
		end

	end

	context "ship status" do 

		it "should be able to get hit" do 
			ship.hit!
			expect(ship).to be_damaged
		end

		it "should lose a hit point when hit" do 
			expect{ship.hit!}.to change{ship.hit_points}.by -1
		end

		it "should know when it has 0 hit points" do
			5.times { ship.hit! }
			expect(ship.hit_points).to eq 0
		end

		it "should sink when it has 0 hit points" do 
			5.times { ship.hit! }
			expect(ship).to be_sunk
		end

		it "should not be able to take damage at 0 hit points" do 
			5.times { ship.hit! }
			expect{ ship.hit! }.to raise_error(RuntimeError)
		end

	end
	
end
