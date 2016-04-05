#Release 0: Bring Santa to Life

class Santa

  reindeer_ranking = ["Rudolph","Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen" ]
  age = 0

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    puts "Initializing Santa instance..."
  end

end

#clouse = Santa.new
#clouse.speak
#clouse.eat_milk_and_cookies("chocolate chip")

#Release 1: Give Santa Attributes for Christmas
santas = []
santas << Santa.new("agender", "black")
santas << Santa.new("female", "Latino")
santas << Santa.new("bigender", "white")
santas << Santa.new("male", "Japanese")
santas << Santa.new("female", "prefer not say")
santas << Santa.new("gender fluid", "Mystical Creature(unicorn)")
santas << Santa.new("N/A", "N/A")

print santas


