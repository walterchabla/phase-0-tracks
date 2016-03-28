puts "How many employees will be processed?"
employee_number = gets.chomp.to_i
start = 0

while start < employee_number

  puts "What is your name?"
  #I look up how to upcase the first letter, I understand what is happening here except for the map, it is like a tag?
  name = gets.chomp.split.map(&:capitalize).join(' ')

  puts "How old are you?"
  age = gets.chomp.to_i

  puts "What year were you born?"
  year_born = gets.chomp.to_i

  puts "Our company serves garlic. Should we order some for you, 'yes' or 'no'"
  order_garlic = gets.chomp

  puts "Would you like to enroll in the company's health insurence, 'yes' or 'no'?"
  health_insurence = gets.chomp

  puts "List any allergies that you have, when finish type 'done'."
  allergies = gets.chomp
  list_number = 0

  while list_number != "allergies"
    allergies = gets.chomp
    list_number += 1
    break if allergies == "done"
    break if allergies == "sunshine"
            puts "Probably a vampire."
 end

  #Do The Thing
  if name == "Drake Cula" || name == "Tu Fang" && 2016 -age == year_born && order_garlic == "yes" && health_insurence == "yes"
  puts "Definitely a vampire."

  elsif 2016 - age == year_born && order_garlic == "yes" && health_insurence == "yes"
  puts "Probably not a vampire."

  elsif 2016 - age != year_born && order_garlic == "yes" || health_insurence == "yes"
  puts "Probably a vampire."

  elsif 2016 - age != year_born && order_garlic == "no" && health_insurence == "no"
  puts "Almost certainly a vampire."

  else
  puts "Results inconclusive."
  end

puts "#{name} is #{age} years old and was born in #{year_born}. #{name} would like gralic: #{order_garlic}. #{name} would like health insurence: #{health_insurence}."

  start += 1
end

puts "Actually, never mind! What do these questions have to do with anything? Let's all be friends."