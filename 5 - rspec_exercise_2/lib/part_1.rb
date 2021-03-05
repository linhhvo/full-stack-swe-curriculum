# partition
# should accept an array and a number as args
# should return a 2D array of length 2 where the first subarray contains elements less than the number arg and the second subarray contains elements greater than or equal to the number arg
# should not use the built-in Array#partition

def partition(nums, num)
   arr = Array.new(2) {Array.new}

   nums.each do
      |element|

      if element < num
         arr[0] << element
      else
         arr[1] << element
      end
   end
   
   arr
end


# merge
# should accept two hashes as args
# should return a new hash representing containing key-value from both hashes
# should take the value from the second hash if the two hashes have duplicate keys
# should not mutate the two input hashes

def merge(hash_1, hash_2)
   # hash_1.merge(hash_2)
   hash = {}
   hash_1.each {|key, value| hash[key] = value}
   hash_2.each {|key, value| hash[key] = value}
   hash
end


# censor
# should accept a sentence and an array of curse words as args
# should return the sentence where every curse word has it's vowels replaced with '*'

def censor(sentence, array)
   sentence_arr = sentence.split.map do
      |word|

      if array.include? (word.downcase)
         word.gsub(/[aeiouAEIOU]/, '*')
      else
         word
      end
   end

   sentence_arr.join(' ')
end


# power_of_two?
# should accept a number as an arg
# when the number is a power of two
#   should return true
# when the number is not a power of two
#   should return false

def power_of_two? (num)
   product = 1

   while product < num
      product *= 2
   end
   product == num
end