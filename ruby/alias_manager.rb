# Release 0: Attempt a Tricky Algorithm
# a method that takes a spy's real name (e.g., "Felicia Torres") and creates a fake name with it

# a method that swaps names, method name:
# swap_name that takes one parameter(name)
# inside the method:
# name.split.rotate.join(" ")
# name is going to be split and return an array, then the array its going to be rotated last join then and that is going to give a string.
# end the method
# output:
# name swaped
def swap_name(name)
  name.split.rotate.join(' ')
end

# a method that changes a vowel to the net vowel, method name:
# next_vowel that takes one parameter (vowels)
# inside the method:
# vowels.tr('aeiou', 'eioua')
# it will swith vowels to the next vowel
# end the method
# output:
# vowels changed to the next vowel
def next_vowel(vowels)
  vowels.tr('aeiou', 'eioua')
end

# method that changes a consonant to next consonant, method name:
# next_consonant that takes a parameter (consonants)
# inside the method:
# consonants.tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')
# it will swith to the next consonant
# end the method
# output:
# consonants changed to the next consonants
def next_consonant(consonants)
  consonants.tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')
end

# a method that creates a fake name for the agent, method name:
# fake_agent_name, that takes a parameter (name)
# inside the method:
# using the other methods that were created to create a fake name
# deal with upcases:
# word = name.downcase
# fake_name = next_consonant(next_vowel(swap_name(word)))
# puts fake_name.split.map(&:capitalize).join(' ')

# end the method
# output:
# creates a fake agent name with vowels and consonants change to the next letter and name swaped.
def fake_agent_name(name)
  word = name.downcase
  fake_name = next_consonant(next_vowel(swap_name(word)))
  fake_name.split.map(&:capitalize).join(' ')
end

store_data_name = {
  agent_name: [],
  store_fake_name: []
}

#Release 1: Provide a User Interface
puts "Hey there special agent!"
puts "We can create fake names for you."
puts "Type some names to see, when your done type 'quit'."
agent_name = gets.chomp
store_data_name[:agent_name] << agent_name
print fake_agent_name(agent_name)
store_data_name[:store_fake_name] << fake_agent_name(agent_name)

while agent_name != 'quit' do
  puts "\nType another name:"
  agent_name = gets.chomp
  store_data_name[:agent_name] << agent_name
  store_data_name[:agent_name].delete("quit")

  print fake_agent_name(agent_name)
  store_data_name[:store_fake_name] << fake_agent_name(agent_name)
  store_data_name[:store_fake_name].delete("Raov")
end

# Release 2: Store the Aliases
# IF statement and WHILE loop use to print history of real names enter and fakenames return.
if agent_name == 'quit'
  puts "\n-------------------"
  idx = 0
  while store_data_name[:store_fake_name][idx] != store_data_name[:agent_name][idx]
    puts "Agent #{store_data_name[:agent_name][idx]} is know as #{store_data_name[:store_fake_name][idx]}"
    puts "-------------------"
    idx += 1
  end
end


#driver code

#p swap_name("walter chabla")
#p next_vowel("walter chabla")
#p next_consonant("walter chabla")
#fake_agent_name("walter chabla")
#fake_agent_name("Felicia Torres")