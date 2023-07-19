require './lib/vehicle'
require './lib/passenger'

describe Vehicle do  
  describe "#initialize" do
    vehicle = Vehicle.new("2001", "Honda", "Civic")  
    it "has readable year, make and model" do

      expect(vehicle.year).to eq("2001")
      expect(vehicle.make).to eq("Honda")
      expect(vehicle.model).to eq("Civic")
    end
  end

  describe "#speeding?" do
    it "returns @speeding for vehicle, false by default" do
      
      expect(vehicle.speeding?).to eq(false)
    end
  end
end