# frozen_string_literal: true

def caesar_cipher(string, shift)
  shift *= 2
  # make an array containing the complete alphabet
  alphabet = %w[a A b B c C d D e E f F g G h H i I j J k K l L m M n N o O p P q Q r R s S t T u U v V w W x X y Y z Z]

  # make a string hold shifted characters
  encrypted_string = ''

  # split the string into an array of characters
  character_array = string.split('')

  # iterate over the array
  character_array.each do |char|
    # check to see the character is in the alphabet if it's not then shovel it into
    # the encrypted_string because it's a special character
    if alphabet.index(char).nil?
      encrypted_string += char
    else

      # locate the character in the alphabet array and add the shift value
      index = alphabet.index(char) + shift

      # check to see if we need to loop around the alphabet array

      remainder = index % 52
      encrypted_string += alphabet[remainder]

    end
  end

  encrypted_string
end
