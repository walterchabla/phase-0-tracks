# Release 1: Write a Simple Module
module Shout
  # we'll put some methods here soon, but this code is fine for now!

  def self.yell_angrily(words)
    words + "!!!" + " :("
  end

  def yelling_happily(word)
    puts "#{word} !! ( Angry Face)"
  end

  module_function :yelling_happily
end


p Shout.yell_angrily("My bike")
Shout.yelling_happily("Awesome")
