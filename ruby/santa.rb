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
  attr_accessor :age, :ethnicity, :gender

  def initialize(gender, ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    @age = 0
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    puts "Initializing Santa instance..."
    puts "Santa gender is: #{@gender} and ethnicity is: #{@ethnicity}."
  end

  def celebrate_birthday
    @age += 1
    year = []
    0.upto(140) do |num|
      year << num
    @age = year.shuffle.last
    end
    puts "Santa is #{@age} years old"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}"
  end

  def get_mad_at(reindeer)
    @reindeer_ranking.delete_if {|reindeer_name| reindeer_name == reindeer}
    @reindeer_ranking << reindeer
    puts  @reindeer_ranking
  end


  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  # setter methods
  #def gender=(new_gender)
    #@gender = new_gender
  #end

  # getter methods
  #def age
    #@age
  #end

  #def ethnicity
    #@ethnicity
  #end
end

# driver code

santa = Santa.new("male", "latino")
santa.speak
santa.eat_milk_and_cookies("chocolate chip")
puts "---------------"
santa.get_mad_at("Rudolph")
puts "---------------"
santa.get_mad_at("Vixen")
puts "---------------"
santa.gender = "black"
santa.celebrate_birthday

#santas = []
#santas << Santa.new("agender", "black")
#santas << Santa.new("female", "Latino")
#santas << Santa.new("bigender", "white")
#santas << Santa.new("male", "Japanese")
#santas << Santa.new("female", "prefer not to say")
#santas << Santa.new("gender fluid", "Mystical Creature (unicorn)")
#santas << Santa.new("N/A", "N/A")

# second way to add genders and ethnicities
santas = []
example_genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
example_ethnicities = ["black", "Latino", "white", "Japanese-African", "prefer not to say", "Mystical Creature (unicorn)", "N/A"]

10.times do
  santas << Santa.new(example_genders.shuffle.last, example_ethnicities.shuffle.last)
end