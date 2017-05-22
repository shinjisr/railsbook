class Bicycle
  attr_reader :gears, :wheels, :seats
  def initialize(gears = 1)
    @gears = gears
    @wheels = 2
    @seats = 1
  end
end

class Tandem < Bicycle
  def initialize(gears)
    # It automatically forwards the arguments,
    # that were passed to the method from which it's called.
    super
    @seats = 2
  end
end

t = Tandem.new(2)
puts t.gears
puts t.wheels
puts t.seats
b = Bicycle.new
puts b.gears
puts b.wheels
puts b.seats
