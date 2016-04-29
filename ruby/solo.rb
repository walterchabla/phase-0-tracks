# 6.4, Release 0: Design a Class
# class of Smoothie
# three attributes using two data types:
# first_fruit, second_fruit, blender
# three methods, one of which takes an argument:
# blend as method with arguments
# fruit can be a method
# another fruit can be a method
# make a smoothie with two fruits and a blender.
#use initialize

# Release 1: Write Your Class
class Smoothie
  # attributes that are readable and writeable
  attr_accessor :fruit, :another_fruit
  attr_reader :blender

  #method name: initialize,
  #created with two parameters
  def initialize(fruit, another_fruit)
    @fruit = fruit
    @another_fruit = another_fruit
    #puts "testing"
  end

  # method name: first_fruit, no parameters,
  # inside the method:
  # prints a statement of fruit
  def first_fruit
    puts "Grabing the first fruit for your smoothie and the fruit is: #{@fruit.capitalize}."
  end

  # method name: second_fruit, no parameters
  # inside the method:
  # prints a statement of another fruit
  def second_fruit
    puts "Grabing the second fruit for your smoothie and the fruit is: #{@another_fruit.capitalize}"
  end

  # method name: blender
  # inside the method:
  # blends the first_fruit and second_fruit and creates the smoothie by combining both methods.
  # output:
  # smoothie created
  def blender
    puts first_fruit
    puts second_fruit
    puts "Blending the fruits, one second please"
     puts "Here is your #{@fruit.upcase}-#{@another_fruit.upcase} smoothie. Enjoy :)!"
  end
end

# driver code
#mix = Smoothie.new("apple", "pear")
#mix.first_fruit
#mix.second_fruit
#mix.blender

# Release 2: Use Your Class in a Program
# prompt the user to use the program
# array created to store smoothies made
smoothies_stored = []
idx = 0
# looping until user does not want more smoothies
while idx != "yes"
puts "Welcome to the smoothie bar!"
puts "You can mix two fruits"
puts "What is your first fruit choice?"
choice_one = gets.chomp

puts "What is your second fruit choice?"
choice_two = gets.chomp
# instance of a class created and being store in smoothies_stored array
smoothie = Smoothie.new(choice_one, choice_two)
smoothie.blender
smoothies_stored << smoothie
# p smoothies_stored

puts "If you would like another smoothie type 'yes'. Otherwise type 'done' if you do not want more smoothies."
answer = gets.chomp
if answer == "yes"
  idx += 1
else
  # printing each smoothie that was made
  smoothies_stored.each {|smoothie|
    puts "This #{smoothie} smoothie was made"}
  exit
end
end











