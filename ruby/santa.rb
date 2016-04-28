# creating a class
# class Santa
# has three methods
# method name:
# def speak no parameters
# inside the method:
# puts "Ho, ho, ho! Haaaappy holidays!"
# end
# method name:
# def eat_milk_and_cookies has a parameter (cookie)
# inside the method
# puts "That was a good #{cookie}"
# end
# method name:
# initialize no parameter
# inside the method
# puts "Initializing Santa instance..."

class Santa


  reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}"
  end

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    puts "Initializing Santa instance..."
  end
end

# driver code
santa = Santa.new("male", "latino")
santa.speak
santa.eat_milk_and_cookies("chocolate chip")