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
end