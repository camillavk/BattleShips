require 'water'

describe Water do 

let (:water) {Water.new}

	it "should return splash when hit" do
		expect(water.hit!).to eq("splash")
	end

end