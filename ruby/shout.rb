# module Shout
  # we'll put some methods here soon, but this code is fine for now

  # a yelling angry method
  # def self.yell_angrily(words)
    # words + "!!! + :("
  # end

  # a yelling happy method
  # def self.yelling_happily(word)
    # word + "!!! + :D"
  # end
# end

# Driver code
# p Shout.yell_angrily("HOW")
# p Shout.yelling_happily("HIII")


module Shout
  def shout_phrase(phrase)
    phrase.upcase + "!!!!!!!!!"
  end
end

class Student
  include Shout
end

class Neighbor
  include Shout
end

# driver code
student = Student.new
p student.shout_phrase("Welcome to the shouting club")

neighbor = Neighbor.new
p neighbor.shout_phrase("Neighbor can I borrow some sugar")
