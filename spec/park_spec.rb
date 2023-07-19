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

end