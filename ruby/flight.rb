# 'Flight' odule created
module Flight
  def take_off(altitude)
    puts "Taking off and ascending until reacing #{altitude} ..."
  end
end

# two classes created
class Bird
  include Flight
end

class Plane
  include Flight
end

# driver code
bird = Bird.new
bird.take_off(800)

plane = Plane.new
plane.take_off(30000)
