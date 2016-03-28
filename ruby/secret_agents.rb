def encrypt(abc)
  digits = "#{abc}".length
  letter = 0

   while letter < digits
      if "#{abc}"[letter.to_i].next == "aa"
        print "a"
      else
        print "#{abc}"[letter.to_i].next
      end
  letter += 1
  end
end

def decrypt(abc)
  decrypt_digits = "#{abc}".length
  decrypt_letter = 0

  while decrypt_letter < decrypt_digits
    print "abcdefghijklmnopqrstuvwxyz"[("abcdefghijklmnopqrstuvwxyz".index("#{abc}".downcase[decrypt_letter.to_i]))-1]

    decrypt_letter += 1
  end
end

# Release 4: still need to finalize: puts decrypt(encrypt("The duck flies at midnight"))

# DRIVER CODE

# ask secret agent whether they would like to encrypt or decrypt
puts "Do you want to encrypt or decrypt your password? (encrypt/decrypt)"
action = gets.chomp

# ask for password
puts "What is your password?"
password = gets.chomp

puts "Password successfully encrypted/decrypted:"
# conduct requested operation
# print result
if action == "encrypt"
  puts encrypt(password)
elsif action == "decrypt"
  puts decrypt(password)
else
  puts "Invalid entry. Please try again."
end

# exit
puts "Thank you for using our program."