#Program that allows interior designer to enter details of a client
#prgram is going to ask for name, age, number of children, decor theme, Which room and budget.
#user is going to enter the data.
# user data needs to be converted to appropriate data.
#print a hash when all data is collected.
#check if the user date is valid

puts "What is your name?"
name = gets.chomp

puts "What is your age?"
age = gets.chomp.to_i

puts "How many children you have?"
num_children = gets.chomp.to_i

puts "Which room would you like to decorate?"
room = gets.chomp

puts "What is your budget?"
budget = gets.chomp.to_i

client = {name: name, age: age,num_children: num_children, room: room, budget: budget}

puts client

if room == "room"
  puts "Please select which room:"
  room = gets.chomp
  update = {room: room}
  client.merge!(update)
  puts client
  else
end


