# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

swapcase = "iNvEsTiGaTiOn".swapcase
puts swapcase
puts "=> 'InVeStIgAtIoN'"

insert = "zom".insert(1, "o")
puts insert
puts "=> 'zoom'"

center = "enhance".center(4)
puts center
puts "=>'    enhance    '"

# "Stop! You’re under arrest!".<???>
# => "STOP! YOU’RE UNDER ARREST!"

# "the usual".<???>
#=> "the usual suspects"

# " suspects".<???>
# => "the usual suspects"

# "The case of the disappearing last letter".<???>
# => "The case of the disappearing last lette"

# "The mystery of the missing first letter".<???>
# => "he mystery of the missing first letter"

# "Elementary,    my   dear        Watson!".<???>
# => "Elementary, my dear Watson!"

# "z".<???>
# => 122
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4