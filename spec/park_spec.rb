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

  describe "#add_vehicle" do
    rockies = Park.new("Rocky Mountains", 25)
    vehicle = Vehicle.new("2001", "Honda", "Civic")  
    it "Can admit vehicles to the park" do

      expect(rockies.vehicles).to eq([])
      rockies.add_vehicle(vehicle)
      expect(rockies.vehicles).to eq([vehicle])
    end
  end

  describe "#passengers" do
    rockies = Park.new("Rocky Mountains", 25)
    honda = Vehicle.new("2001", "Honda", "Civic")
    ford = Vehicle.new("2001", "Ford", "Fiesta")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
    jude = Passenger.new({"name" => "Jude", "age" => 20})  
    it "returns a list of all passengers who entered the park" do
      honda.add_passenger(charlie)
      ford.add_passenger(jude)
      rockies.add_vehicle(honda)
      rockies.add_vehicle(ford)

      expect(rockies.passengers).to eq([charlie, jude])
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
      rockies.add_vehicle(honda)
      rockies.add_vehicle(ford)

      expect(rockies.revenue).to eq(50)
    end
  end

  describe "#all_attendees" do
    rockies = Park.new("Rocky Mountains", 25)
    honda = Vehicle.new("2001", "Honda", "Civic")
    ford = Vehicle.new("2001", "Ford", "Fiesta")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
    jude = Passenger.new({"name" => "Jude", "age" => 20})  
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    it "returns Array of strings with all attendees in the park sorted alphabetically" do
      honda.add_passenger(charlie)
      honda.add_passenger(taylor)
      ford.add_passenger(jude)
      rockies.add_vehicle(honda)
      rockies.add_vehicle(ford)

      expect(rockies.all_attendees).to eq(["Charlie", "Jude", "Taylor"])
    end
  end

  describe "#minors" do
    rockies = Park.new("Rocky Mountains", 25)
    honda = Vehicle.new("2001", "Honda", "Civic")
    ford = Vehicle.new("2001", "Ford", "Fiesta")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})  
    jude = Passenger.new({"name" => "Jude", "age" => 20})  
    taylor = Passenger.new({"name" => "Taylor", "age" => 12}) 
    it "returns Array of strings with the names of all minors in the park" do
      honda.add_passenger(charlie)
      honda.add_passenger(taylor)
      ford.add_passenger(jude)
      rockies.add_vehicle(honda)
      rockies.add_vehicle(ford)

      expect(rockies.minors).to eq(["Taylor"])
    end
  end  

end