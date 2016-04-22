#Release 2: Use Arrays in Methods
# 1) method that takes 3 parameters
# def method: build_array(item1, item2, item3)
# inside the method:
# arr = []
# arr << item1 << item2 << item3
# p arr
#output:
# returns an arrar of those items
def build_array(item1, item2, item3)
  arr = []
  arr << item1 << item2 << item3
  p arr
end


#Release 1: Explore the Docs
# 1)Initializing new array
cars = []
p cars

# 2) Addiding items to the array
cars << "Mustang" << "Lambo" << "Audi" << "Jeep" << "Aston Martin"
p cars

# 3) Deleting item at index 2
cars.delete_at(2)
p cars

# 4) Inserting a new item at index 2
cars.insert(2, "VW")
p cars

# 5) Removing the first item of the array without having to refer to its index
cars.shift
p cars

# 6) Ask the array whether it includes a certain item. Print the result of this method call
includes = cars.include?("Ferrari")
puts "Does this array contains 'Ferrari': #{includes}"

# 7) Initializing another array with items
more_cars = ["Honda", "Porsche", "Toyota"]
p more_cars

# 8) adding the two arrays together
cars_combine = cars.concat(more_cars)
p cars_combine

# Drive code

build_array(1, "two", nil)