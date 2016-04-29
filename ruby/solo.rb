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

  #method name: initialize,
  #created with two parameters
  def initialize(fruit, another_fruit)
    @fruit = fruit
    @another_fruit = another_fruit
    puts "testing"
  end

  # method name: first_fruit, no parameters,
  # output: prints a statement of fruit
  def first_fruit
    puts "Grabing the first fruit for your smoothie and the fruit is: #{@fruit}."
  end


  # method name: second_fruit, no parameters
  # output:
  # prints a statement of another fruit
  def second_fruit
    puts "Grabing the second fruit for your smoothie and the fruit is: #{@another_fruit}"
  end


  # blender method that blends the fruit and another_fruit and creates the smoothie.
end

# driver code
fruit = Smoothie.new("apple", "pear")
fruit.first_fruit
fruit.second_fruit