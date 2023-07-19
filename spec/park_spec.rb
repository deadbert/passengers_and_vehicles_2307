require './lib/vehicle'
require './lib/passenger'
require './lib/park'

describe Park do
  describe "#initialize" do
  rockies = Park.new("Rocky Mountains", 25)
    it "has readable name and admission price" do

      expect(rockies.name).to eq("Rocky Mountains")
      expect(rockies.admission_price).to eq(25)
    end

    it "initializes with no vehicles having entered the park" do
      
      expect(rockies.vehicles).to eq([])
    end
  end

  describe "#admit_vehicle" do
    rockies = Park.new("Rocky Mountains", 25)
    vehicle = Vehicle.new("2001", "Honda", "Civic")  
    it "Can admit vehicles to the park" do

      expect(rockies.vehicles).to eq([])
      rockies.admit_vehicle(vehicle)
      expect(rockies.vehicles).to eq([vehicle])
    end
  end

end