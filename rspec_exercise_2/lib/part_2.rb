# palindrome?
# should accept a string as an arg
# should not use String#reverse
# when the string is the same forwards and backwards
#   should return true
# when the string is not the same forwards and backwards
#   should return false

def palindrome? (str)
   return true if str.length == 1

   mid = str.length / 2
   left = 0
   right = -1

   while left <= mid
      return false if str[left] != str[right]
      left += 1
      right -= 1
   end
   
   return true
end   


# substrings
# should accept a string as an arg
# should return an array containing all substrings of the given string

def substrings(str)
   arr = []

   str.each_char.with_index do
      |char, i|

      arr << char

      next_i = i + 1
      while next_i < str.length
         char += str[next_i]
         arr << char
         next_i += 1
      end   
   end

   arr
end


# palindrome_substrings
# should accept a string as an arg
# should return an array containing all substrings that are palindromes and longer than 1 character
# should call your previous 'palindrome?' method
# should call your previous 'substrings' method

def palindrome_substrings(str)
   result = []

   all_substrings = substrings(str)
   all_substrings.each do
      |substring|

      result << substring if substring.length > 1 && palindrome?(substring)
   end

   result
end