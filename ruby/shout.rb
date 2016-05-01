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
end

class Neighbor
end