puts "Whats the hamster's name?"
hamster_name = gets.chomp

puts "Scale from 1-10 how loud is the hamster?"
loud_hamster = gets.chomp.to_i

puts "What color is the hamster?"
color_hamster = gets.chomp

puts "Is the hamster a good candidate for adoption? (yes/no)"
adoption = gets.chomp
if adoption == "yes"
  adoption
elsif adoption == "no"
  adoption = false
else puts "answer with yes or no, please"
end


puts "How old is the hamster"
age = gets.chomp.to_i
if age == ""
   age = "nil"
end

puts "#{hamster_name} is #{color_hamster} and he/she is #{age} years old. In terms of loudness, on a scale of 1 to 10 #{hamster_name} is a #{loud_hamster}."
puts "#{hamster_name} is a good candidate for adoption? #{adoption}"