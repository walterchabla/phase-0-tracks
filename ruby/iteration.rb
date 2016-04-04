#release 0
def method
  puts "This is the method"
  yield
end
method { puts "This is the block"}

#release 1, do the thing, 1 and 2
#this part needs a hash
names = ["Walter", "Mike", "Dmitris", "Olga"]
p names
names.each do |name|
  puts name
end
p names

names = ["Walter", "Mike", "Dmitris", "Olga"]
p names

names.map! {|name| name + "!"}
p names

#release 2, do the thing, 1
numbers = {1 => "one", 2 => "two", 3 => "three", 4 => "four"}
numbers.map do |number, word|
  if number.even?
    p number
    p word
  else
   numbers.delete(number)
   numbers.delete(word)
  end
end
p numbers

#release 2, do the thing, 2
numbers = {1 => "one", 2 => "two", 3 => "three", 4 => "four"}
new_numbers = {}
numbers.map do |number, word|
  if number.odd?
    new_numbers.store(number, word)
  end
end
p numbers
p new_numbers

#release 2, do the thing, 3
numbers = [1, 2, 3, 4, 5, 6]
numbers.map! do |number|
  if number.even?
    p number
  end
end
p numbers

#release 2, do the thing, 4
#still working on this part of the do the thing
#numbers = [1, 2, 3, 4, 5, 6, 7, 8]
#count = 0
  #numbers.map! do |number|
      #if number % 2
          #while count < number
            #p number
            #   numbers.delete(number)
          #end
          #count += 1
       #p number
      #end
  #end
#p numbers


words = ["apple", "dog", "car", "house", "name"]
length_words = words.length
index = 0
  words.map! do |word|
    if word == str
      while index < length_words
        p word
      end
    end
  end
