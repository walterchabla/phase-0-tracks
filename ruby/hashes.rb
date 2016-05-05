# Release 3: Use a Hash in a Program

# ask 5 questions for the designer or user about name, age, likes animals,decor theme and which room?
# store the answer:
# name = gets.chomp (use this gets.chomp for all questions, use different variables)
# if answer is equal to a symbol(key) ask for another answer and update the hash
# save their answer and put into a hash:
# declare a new hash, then add symbols to the hash with answers as values:
# applicant = {name: name, age: age, likes_animals: animals, decor theme: theme, room: room}
# prints the hash with all the information

puts "What is your name?"
name = gets.chomp.capitalize

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

10.times {print "-"}
applicant = Hash.new
applicant = {name: name, age: age, likes_animals: animals, decor_theme: theme, room: room}
puts "\nName: #{applicant[:name]}\nAge: #{applicant[:age]}\nLikes Animal: #{applicant[:likes_animals]}\nTheme: #{applicant[:decor_theme]}\nRoom to decorate: #{applicant[:room]}"

if name == "Name"
  puts "Please put a valid name?"
  name = gets.chomp.capitalize
  applicant[:name] = name
end

10.times {print "-"}
puts "\nName: #{applicant[:name]}\nAge: #{applicant[:age]}\nLikes Animal: #{applicant[:likes_animals]}\nTheme: #{applicant[:decor_theme]}\nRoom to decorate: #{applicant[:room]}"


