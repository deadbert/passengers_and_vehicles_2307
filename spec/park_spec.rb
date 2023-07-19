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

  describe "#list_passengers" do
    rockies = Park.new("Rocky Mountains", 25)
    honda = Vehicle.new("2001", "Honda", "Civic")
    ford = Vehicle.new("2001", "Ford", "Fiesta")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
    jude = Passenger.new({"name" => "Jude", "age" => 20})  
    it "returns a list of all passengers who entered the park" do
      honda.add_passenger(charlie)
      ford.add_passenger(jude)
      rockies.admit_vehicle(honda)
      rockies.admit_vehicle(ford)

      expect(rockies.list_passengers).to eq([charlie, jude])
    end
  end

  describe "#revenue" do 
    rockies = Park.new("Rocky Mountains", 25)
    honda = Vehicle.new("2001", "Honda", "Civic")
    ford = Vehicle.new("2001", "Ford", "Fiesta")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
    jude = Passenger.new({"name" => "Jude", "age" => 20})  
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    it "can calculate revenue based on number of adults that have entered park" do
      honda.add_passenger(charlie)
      honda.add_passenger(taylor)
      ford.add_passenger(jude)
      rockies.admit_vehicle(honda)
      rockies.admit_vehicle(ford)

      expect(rockies.revenue).to eq(50)
    end
  end

end