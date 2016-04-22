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
