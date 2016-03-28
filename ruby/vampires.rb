
#puts "What is your name?"
#name = gets.chomp

puts "How old are you?"
age = gets.chomp.to_i

puts "What year were you born?"
year_born = gets.chomp.to_i

puts "Our company serves garlic. Should we order some for you, 'yes' or 'no'"
order_garlic = gets.chomp

puts "Would you like to enroll in the company's health insurence, 'yes' or 'no'?"
health_insurence = gets.chomp

#Do The Thing
if 2016 - age == year_born && order_garlic == "yes" && health_insurence == "yes"
  puts "Probably not a vampire."
end

#if 2016 - age != year_born


#elsif 2016 - age != year_born
#puts "Probably not a vampire."
#elsif order_garlic == "yes"
 # puts "Probably not a vampire."
#elsif health_insurence == "yes"
 # puts "Probably not a vampire."
#elsif

#end


#If the employee got their age wrong, and hates garlic bread or waives insurance, the result is “Probably a vampire.”
#If the employee got their age wrong, hates garlic bread, and doesn’t want insurance, the result is “Almost certainly a vampire.”
#Even if the employee is an amazing liar otherwise, anyone going by the name of “Drake Cula” or “Tu Fang” is clearly a vampire, because come on. In that case, you should print “Definitely a vampire.”
#Otherwise, print “Results inconclusive.”
