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

upcase = "Stop! You’re under arrest!".upcase
puts upcase
puts "=> 'STOP! YOU’RE UNDER ARREST!'"

l_just = "the usual".ljust(19, " suspescts")
puts l_just
puts "=> 'the usual suspects'"

prepend = " suspects".prepend("the usual")
puts prepend
puts "=> 'the usual suspects'"

chop = "The case of the disappearing last letter".chop
puts chop
puts "=> 'The case of the disappearing last lette'"

delete = "The mystery of the missing first letter".delete("T")
puts delete
puts "=> 'he mystery of the missing first letter'"

squeeze = "Elementary,    my   dear        Watson!".squeeze
puts squeeze
puts "=> 'Elementary, my dear Watson!'"

# "z".<???>
# => 122
# (What is the significance of the number 122 in relation to the character z?)

# "How many times does the letter 'a' appear in this string?".<???>
# => 4