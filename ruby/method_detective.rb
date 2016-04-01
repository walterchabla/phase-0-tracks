# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

swap_case = "iNvEsTiGaTiOn".swapcase
puts swap_case
# => "InVeStIgAtIoN"

inser = "zom".insert(2, 'o')
puts inser
# => "zoom"

cent = "enhance".center(15)
puts cent
#=> "    enhance    "

up_case = "Stop! You’re under arrest!".upcase
puts up_case
# => "STOP! YOU’RE UNDER ARREST!"

str = "the usual"
str.replace "the usual suspects"
puts str
#=> "the usual suspects"

sus = " suspects"
sus.prepend("the usual")
puts sus
#=> "the usual suspects"

chop = "The case of the disappearing last letter".chop
puts chop
# => "The case of the disappearing last lette"

delete = "The mystery of the missing first letter".delete("T")
puts delete
# => "he mystery of the missing first letter"

squeeze = "Elementary  ,    my   dear      Watson!".squeeze(" ")
puts squeeze
# => "Elementary, my dear Watson!"

letter = "z".ord
puts letter
# => 122
# Is the number on the alphabet and starts with 98 and fineshes on 122.
# (What is the significance of the number 122 in relation to the character z?)

string = "How many times does the letter 'a' appear in this string?".count("a")
puts string
#=> 4