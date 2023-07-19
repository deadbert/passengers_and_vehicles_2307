require './lib/vehicle'
require './lib/passenger'

describe Vehicle do  
  describe "#initialize" do
    vehicle = Vehicle.new("2001", "Honda", "Civic")  
    it "has readable year, make and model, empty passenger array at initialize" do

      expect(vehicle.year).to eq("2001")
      expect(vehicle.make).to eq("Honda")
      expect(vehicle.model).to eq("Civic")
      expect(vehicle.passengers).to eq([])
    end
  end

  describe "#speeding?" do
    vehicle = Vehicle.new("2001", "Honda", "Civic")  
    it "returns @speeding for vehicle, false by default" do
      
      expect(vehicle.speeding?).to eq(false)
    end
  end

  describe "#speed" do
    vehicle = Vehicle.new("2001", "Honda", "Civic")  
    it "sets @speeding to true" do
      
      expect(vehicle.speeding?).to eq(false)
      vehicle.speed
      expect(vehicle.speeding?).to eq(true)
    end
  end
end