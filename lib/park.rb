class Park
  attr_reader :name, :admission_price, :vehicles

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def passengers
    @vehicles.map do |vehicle|
      vehicle.passengers
    end.flatten
  end

  def revenue
    adults = 0
    @vehicles.each do |vehicle|
      adults += vehicle.num_adults
    end
    adults * @admission_price
  end

  def all_attendees
    passengers.map do |passenger|
      passenger.name
    end.sort
  end

end