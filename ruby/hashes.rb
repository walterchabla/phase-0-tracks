# Release 3: Use a Hash in a Program

# ask 5 questions for the designer or user about name, age, likes animals,decor theme and which room?
# store the answer:
# name = gets.chomp (use this gets.chompfor all questions, use different variables)
# if answer is equal to a symbol(key) ask for another answer and update the hash
# save their answer and put into a hash:
# declare a new hash with symbols and answers as values:
# applicant = {name: name, age: age, likes_animals: animals, decor theme: theme, room: room}
# prints the hash with all the information

puts "What is your name?"
name = gets.chomp
if name == "name"
  puts "Please put a valid name?"
  name = gets.chomp
end

puts "How old are you?"
age = gets.chomp.to_i

puts "Do you like animals, true or false?"
animals = gets.chomp
if animals == "true"
  animals = true
elsif animals == "false"
  animals = false
end

puts "What is your decor theme?"
theme = gets.chomp

puts "Which room would you like to decorate?"
room = gets.chomp

applicant = {name: name, age: age, likes_animals: animals, decor_theme: theme, room: room}

puts applicant

