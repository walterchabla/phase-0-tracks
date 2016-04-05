class Puppy

  def fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def speak(int)
   number = int.to_i
   puts "Woof! " * number
 end

 def roll_over
  puts "*rolls over*"
 end

 def dog_years(years)
   year_dogs = years.to_i * 7
   puts year_dogs
 end

 def reverse_word(word)
  new_word = word.reverse
  puts new_word
 end

 def initialize
  puts "initializing new puppy instance..."
 end

end

#release 0, do the thing
duchess = Puppy.new
duchess.fetch("toy")

bark = Puppy.new
bark.speak(5)

bark.roll_over

bark.dog_years(3)

bark.reverse_word("Bobby")

#release 2, do the thing

class Soccer_Players
<<<<<<< HEAD

  def initialize
    puts "Hello"
  end
=======
<<<<<<< HEAD

  def initialize
    puts "Hello"
  end
=======
 # array = Array.new

  #def initialize
   # puts "Hello"
  #end
>>>>>>> master
>>>>>>> 632ba326a3abeef1c2a1fec151704c1facce8086

  def num_moves(stri)
    number = stri.to_i
    puts "This players knows #{number} moves."
  end

  def players(name)
    puts "#{name} is one of the greatest player in soccer history."
  end

end

array = []
soccer = Soccer_Players.new

<<<<<<< HEAD
50.times do
  soccer = Soccer_Players.new
  array << soccer
=======
<<<<<<< HEAD
50.times do
  soccer = Soccer_Players.new
  array << soccer
end


p array
=======
50.times do soccer = Soccer_Players.new
>>>>>>> 632ba326a3abeef1c2a1fec151704c1facce8086
end

p array

>>>>>>> master
soccer.num_moves(20)

soccer.players("Messi")