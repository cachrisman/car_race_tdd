require_relative 'car'

class Race
  attr_reader :cars
  def initialize
    @cars = [Car.new, Car.new]
    cars.first.accelerate rand(100)
    cars.last.accelerate rand(100)
  end
  def winner
    cars.first.speed > cars.last.speed ? cars.first : cars.last
  end
  def loser
    cars.first.speed > cars.last.speed ? cars.last : cars.first
  end
end
