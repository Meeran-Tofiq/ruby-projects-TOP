def caesar_cipher(str, shift)
    alphabet_small = ('a'..'z').to_a
    alphabet_big = ('A'..'Z').to_a
    alphabet_size = 26

    char_index = 0
    shifted_char = ""
    shifted_string = ""

    str.each_char do |char|

       if alphabet_small.include?(char)

        char_index = alphabet_small.index(char)
        shifted_char = alphabet_small[char_index + shift] || alphabet_small[shift - (alphabet_size - char_index)]
        
       elsif alphabet_big.include?(char)

        char_index = alphabet_big.index(char)
        shifted_char = alphabet_big[char_index + shift] || alphabet_big[shift - (alphabet_size - char_index)]
        
       else
        shifted_char = char
       end

       shifted_string += shifted_char
    end

    shifted_string
end

caesar_cipher('22wWaaZZ', 4)