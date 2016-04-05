#program that swapps the first and last name and changes all of the vowels (a, e, i, o, or u) to the next vowel in 'aeiou',
#and all of the consonants to the next consonant in the alphabet.
#methods and arrays need to be created
#If successfully implement the algorithm, "Felicia Torres" will become "Vussit Gimodoe".

#Release 0: Attempt a Tricky Algorithm
puts "What is your first name agent?"
first_name = gets.chomp.downcase

puts "What is your last name agent?"
last_name = gets.chomp.downcase

def next_vowel(vowel)
  vowel.tr('aeiou', 'eioua')
end
#puts next_vowel("Hey I take change vowels")

def next_consonant(consonant)
  consonant.tr('bcdfghjklmnpqrstvwxyz', 'cdfghjklmnpqrstvwxyzb')
end
#puts next_consonant("Hi, I change consonants")

def fake_name(first, second)
   arr =[]
   first_fake = ""
  if first == first
    first_fake += next_consonant(next_vowel(first)).capitalize
    arr.push(first_fake)
    p arr

   second_fake = ""
   second == second
    second_fake += next_consonant(next_vowel(second)).capitalize
    arr.push(second_fake)
    p arr
  end
  arr.reverse!
end
p fake_name(first_name, last_name)

#Release 1: Provide a User Interface
puts "When your done you can type 'quit', press enter to continue."
agent_name = gets.chomp
puts "What is your name agent?"
idx = 0
while idx != "quit"
    agent_name = gets.chomp
    idx += 1
    break if agent_name == "quit"

def fake_name(name)
   arr =[]
   first_fake = ""
  if name == name
    first_fake += next_consonant(next_vowel(name)).capitalize
    arr.push(first_fake)
  end
end
p fake_name(agent_name)
end

#Release 2: Store the Aliases
#i could not store the agents name and print it, I am going to ask for help for this part.




