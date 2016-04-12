# Virus Predictor

# I worked on this challenge [by myself, with: ].
# We spent [#] hours on this challenge.

# EXPLANATION OF require_relative
#require_relative is having the code from another file being avaliable in this file.
#require_relative works if your in the same folder or directory, as require would work for files that are outside the directory or folder.
require_relative 'state_data'

class VirusPredictor

  #It declares the instence variable and sets the instance variable to the arguments, and its the first thing it runs.
  def initialize(state_of_origin, population_density, population)
    @state = state_of_origin
    @population = population
    @population_density = population_density
  end

  #Its calling private methods
  def virus_effects
    predicted_deaths
    speed_of_spread
  end

  private

  #predictcs number of deaths and prints a string.
  def predicted_deaths
    # predicted deaths is solely based on population density
    number_of_deaths = 0
    density_deaths = {'200' => 0.4, '150' => 0.3, '100' => 0.2, '50' => 0.1, '0' => 0.05}
    density_deaths.each do |density, rate|
      if @population_density >= density_deaths[density].to_i
        number_of_deaths = (@population * rate).floor
      end
    end


    print "#{@state} will lose #{number_of_deaths} people in this outbreak"

  end

  # it will print a string of how long it will take to spread base on the population density
  def speed_of_spread
    #in months
    # We are still perfecting our formula here. The speed is also affected
    # by additional factors we haven't added into this functionality.
    speed = 0.0

    density_speed = {'200' => 0.5, '150' => 1, '100' => 1.5, '50' => 2, '0' => 2.5}
    density_speed.each do |density, rate|
      if @population_density >= density.to_i
        speed += rate
      end
    end

    puts " and will spread across the state in #{speed} months.\n\n"

  end

end

#=======================================================================

# DRIVER CODE
 # initialize VirusPredictor for each state
 STATE_DATA.each do |state_name, value|
  VirusPredictor.new(state_name, STATE_DATA[state_name][:population_density], STATE_DATA[state_name][:population]).virus_effects
  end

alabama = VirusPredictor.new("Alabama", STATE_DATA["Alabama"][:population_density], STATE_DATA["Alabama"][:population])
alabama.virus_effects

jersey = VirusPredictor.new("New Jersey", STATE_DATA["New Jersey"][:population_density], STATE_DATA["New Jersey"][:population])
jersey.virus_effects

california = VirusPredictor.new("California", STATE_DATA["California"][:population_density], STATE_DATA["California"][:population])
california.virus_effects

alaska = VirusPredictor.new("Alaska", STATE_DATA["Alaska"][:population_density], STATE_DATA["Alaska"][:population])
alaska.virus_effects


#=======================================================================
# Reflection Section
# The difference between the two different hash syntaxes are that when you use '=>' you can use another hash inside the hash as its value or declare the variable, and when you use the collins you are declaring the key and giving the value.
#require_relative is having the code from another file being avaliable in this file. require_relative works if your in the same folder or directory, as require would work for files that are outside the directory or folder.
# some ways to iterate through a hash is using #each, #sort and for.
# When refactoring virus_effects what stood out about the variables were that they where instance variables and that they were already being initialiaze in the method initialize.
# the concepts that I solidify in this challenge were using ruqire_relative and working with class and methods, and how to iterate throught a hash.

