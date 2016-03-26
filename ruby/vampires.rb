puts "What is your name?"
name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year_born = gets.chomp.to_i

#first exercise in the list of
if 2016 - age == year_born
  puts "Probably not a vampire."
else
  puts "Probably a vampire."
end

puts "Our company serves garlic. Should we order some for you?"
order_garlic = gets.chomp

puts "Would you like to enroll in the company's health insurence?"
health_insurence = gets.chomp

#first exercise in the list of
if 2016 - age == year_born
  puts "Probably not a vampire."
else
  puts "Defnitely a vampire."
end


