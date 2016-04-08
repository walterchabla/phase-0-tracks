# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps:
  # identify items in the list as  "carrots apples cereal pizza"
  # quantity = 1
  # print the list to the console
  #using puts
# output: hash
$list = {}
def create_list(item, quantity)
  $list.store(item, quantity)
  $list
end

puts create_list("pizza", 1)
puts create_list("chips", 1)


# Method to add an item to a list
# input: bananas 1 bag
# steps: using [item] = quantity
# output:adding bananas to the list

def add_item(item, quantity)
  $list[item] = quantity
  $list
end

puts add_item("lemonade", 2)
puts add_item("tomatoes", 3)
puts add_item("onions", 1)
puts add_item("ice cream", 4)


# Method to remove an item from the list
# input: delete carrots
# steps: using delete
# output: list with out carrots

def remove_item(item)
  $list.delete(item)
  $list
end
puts remove_item("lemonade")

# Method to update the quantity of an item
# input: update carrots to new value
# steps: using replace
# output: list with carrots updated

def update_item(item, quantity)
  update = {item => quantity}
  $list.merge!(update)
  $list
end
puts update_item("ice cream", 1)

# Method to print a list and make it look pretty
# input: puts "sentence wiht #{item}"
# steps: using puts
# output: sentence with item.

def print_list
  $list.each {|item, quantity| puts "Food item: #{item}, quantity needed: #{quantity}"}
  $list
end

print_list

#Release 5: Reflect
# -I learn that having a pseudocode before writing my code it help me plan what the code whats going to be about, also states what I need to do. For example it can say I need a method that does something and the result.
# -Tradesoff(meaning chosing between) of using array or hashes, we chose hashes. Using hashes for this challage helps because in hashes you can take a key-value pair, which was name of the item as key and quantity as its value. In arrays you have values like string, integers and boolens.
# -A method returns the code that you wrote and returns the last line inside the method code.
# -You can pass strings and integers as parameters on a method.
# -You can set a variable to a global variable and thats how you will be able to use the globla in all your methods in your code.
# -The concepts that were solidified were the globla variable and how to store items on a hash. The concepts that are still confusing are havind a good pseudocode, description of the code that I am going to write, and still a little confuse on using methods together or global variables, Im going to practice more this online.
