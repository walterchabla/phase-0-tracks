def add_to_array(arr, item)
  add_to_array = arr + Array.[](item)
end

def array_return(x, y, z)
  array_return = []
  array_return.insert(0, x, y, z)
end


p add_to_array([1,3], "stuff")
p add_to_array(["stuff", "things"], 10)
p add_to_array([1, 2, 3], false)
p add_to_array([true, false], -19)
p add_to_array(["s", "z"], 1.5)

 array = []
p array

#Attempted to simply add new variables to array without creating another variable
#Works in IRB, however returns two empty arrays when the program is ran
#Had to create a new variable to store the updates, for the program to run correctly
array_new = array + [ "Walter", "Olya", "20", "New York", "food" ]
p array_new

array_new.delete_at(2)
p array_new

array_new.insert(2, "new")
p array_new

array_new.delete("Walter")
p array_new

answer = array_new.include?("new")
puts "The array includes word new. #{answer}."

food = ["chicken", "pizza"]

combined_array = array_new + food
p combined_array

p array_return("nose", "ear", "hand")