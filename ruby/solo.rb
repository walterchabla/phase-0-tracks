# 6.4, Release 0: Design a Class
# class of Smoothie
# three attributes using two data types:
# fruit, another fruit, blender
# three methods, one of which takes an argument:
# blend as method with arguments
# fruit can be a method
# another fruit can be a method
# make a smoothie with two fruits and a blender.
#use initialize

# Release 1: Write Your Class
class Smoothie
  attr_accessor :fruit, :another_fruit, :blender

  def initialize(fruit, another_fruit)
    @fruit = fruit
    @another_fruit = another_fruit
  end

  def fruit
    puts "Grabbing the fruit, got the #{@fruit}!!"
  end

  def another_fruit
    puts "Grabbing another fruit, got the #{@another_fruit}!!"
  end

  def blender
    blended = @fruit + @another_fruit
    puts "Here is you #{blended} smoothie!!! :)"
  end
end

idx = 0
while idx != "no"
  puts "Would you like a smoothie? If not type 'no' to exit"
  smoothie = $stdin.gets.chomp
    if smoothie != "no"
      puts "You can have a mix of two fruits, name the first fruit:"
      fruit = $stdin.gets.chomp

      puts "Name the second fruit:"
      another_fruit = gets.chomp

      fruit_smoothie = Smoothie.new(fruit, another_fruit)
      puts fruit_smoothie.fruit
      puts fruit_smoothie.another_fruit
      puts fruit_smoothie.blender
idx += 1
    elsif smoothie == "no"
      puts fruit_smoothie.blender
      p fruit_smoothie
      exit
    end
end
