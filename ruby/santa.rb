#Release 0: Bring Santa to Life

class Santa
  attr_accessor :gender, :ethnicity

  $reindeer_ranking = ["Rudolph","Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen" ]
  @age = 0

  def speak
    puts "Ho, ho, ho! Haaaappy holidays!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie}!"
  end

  def initialize(gender,ethnicity)
    @gender = gender
    @ethnicity = ethnicity
    puts "Initializing Santa instance..."
  end

  def celebrate_birthday
    age_num = []
    0.upto(140) do |num|
      age_num << num
      age_num
      end
    @age = age_num.shuffle.last
    puts "Happy #{@age} Birthay Santa!!"
  end

  def get_mad_at(name)
    if $reindeer_ranking.include?(name)
      $reindeer_ranking.delete(name)
      $reindeer_ranking.push(name)
      $reindeer_ranking
    end
  end

#getter methods
  #def gender
    #@gender
  #end

  #def ethnicity
    #@ethnicity
  #end

  #Release 4: Build Many, Many Santas
  $example_genders = ["male", "female", "agender", "bigender", "gender_fluid", "N/A"]
  $example_ethnicities = ["Latino", "black", "white", "Japanese", "prefer not say", "Mystical world", "Italians"]

    random_santa = []
    10.times do
      @gender = $example_genders.shuffle.last

      @ethnicity = $example_ethnicities.shuffle.last
      random_santa = [@gender] + [@ethnicity]
      p random_santa
    end
end


p clouse = Santa.new("male", "latino")
p clouse.celebrate_birthday
p clouse.get_mad_at("Vixen")
#p clouse.random_santas
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


