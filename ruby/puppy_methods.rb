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

 def initialize
   puts "Hello"
 end

 def num_moves(stri)
   number = stri.to_i
   puts "This players knows #{number} moves."
 end

 def players(name)
   puts "#{name} is one of the greatest player in soccer history."
 end

  array = []

  50.times do
  soccer = Soccer_Players.new
  array << soccer
  array
  end
end

soccer = Soccer_Players.new

soccer.num_moves(20)
soccer.players("Maradona")

soccer.num_moves(20)

soccer.players("Messi")