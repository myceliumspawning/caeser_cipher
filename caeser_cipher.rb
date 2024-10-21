# Asks user for input
puts "Enter the message you wish to encrypt:"
user_input = gets.chomp

puts "Enter the key:"
key = gets.chomp.to_i

def caeser_cipher(user_input, key)

# Converts user_input to ASCII array, implements shift, and converts back to characters
cipher_array = user_input.bytes.map do |element|
  # Deals with uppercase characters
  if (element.between?(65, 90) == true)
    (65 + (element + key - 65)%26).chr
  # Deals with lowercase characters
  elsif (element.between?(97, 122) == true)
    (97 + (element + key - 97)%26).chr
  # Deals with numbers
  elsif (element.between?(48, 57) == true)
    (48 + (element + key - 48)%10).chr
  # Copies punctuation and whitespace as is
  else
    element.chr
  end
end

final_message = cipher_array.join("")

end

puts caeser_cipher(user_input, key)