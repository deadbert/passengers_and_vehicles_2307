require './lib/passenger'

describe Passenger do
  describe "#initializ" do
    it "has readable name and age" do
      charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
      taylor = Passenger.new({"name" => "Taylor", "age" => 12})  

      expect(charlie.name).to eq("Charlie")
      expect(charlie.age).to eq(18)
    end
  end

  describe "#adult?" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
    it "returns true if passenger.age >= 18" do
      
      expect(charlie.adult?).to eq(true)
      expect(taylor.adult?).to eq(false)
    end
  end

  describe "#drive?" do
    it "returns @driver for passenger" do
      
      expect(charlie.drive?).to eq(false)
    end
  end
  describe "#drive" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})    
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})  
    it "sets @drive to true for passenger" do
      
      expect(charlie.driver?).to eq(false)
      charlie.drive
      expect(charlie.driver?).to eq(true)
    end
  end
end