# hipsterfy
# should accept a word as an arg
# should return the word with it's last vowel (a, e, i, o, u) removed
# should return the original word if it contains no vowels

def hipsterfy(word)
   vowels = 'aeuio'

   (1...word.length).each do
      |index|
      if vowels.include? (word[-index])
         return word[0...-index] << word[-index + 1..-1]
      end
   end
   word
end


# vowel_counts
# should accept string as an arg
# should return a hash where each key is a vowel of string and it's value is the number of times it appears

def vowel_counts(str)
   vowels = 'aeuio'
   str.downcase!
   hash = {}
   
   vowels.each_char do |char|
      count = str.count char

      if count > 0
         hash[char] = count
      end
   end
   hash
end


# caesar_cipher
# should accept a message and a number (n) as an arg
# should return a new string where every letter of the message is shifted n positions in the alphabet
# should not modify non-alphabetic characters

# def caesar_cipher(str, num)
#    cipher = ''
#    num = num % 26 if num > 26

#    str.each_codepoint do
#       |codepoint|
         
#       if codepoint < 123 && codepoint > 96
#          codepoint += num
#          if codepoint > 122
#             codepoint -= 26
#          end
#       end

#       cipher << codepoint.chr
#    end

#    cipher
# end

def caesar_cipher(str, num)
   alphabet = ('a'..'z').to_a
   cipher = ''

   str.each_char do
      |char|

      if alphabet.include? (char)
         old_index = alphabet.index(char)
         new_index = (old_index + num) % alphabet.length

         char = alphabet[new_index]
      end   

      cipher << char
   end

   cipher
end