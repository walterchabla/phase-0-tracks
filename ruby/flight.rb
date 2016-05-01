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
