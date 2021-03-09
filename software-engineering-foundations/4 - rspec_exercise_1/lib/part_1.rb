# average
#     should accept two numbers as arguments
#     should return the average of the two numbers

def average(num_1, num_2)
   (num_1 + num_2).fdiv(2)   
end


# average_array
#     should accept an array of numbers as an arg
#     should return the average of the numbers of the array

def average_array(array)
   array.sum.fdiv(array.length)
end


# repeat
#     should accept a string and a number as args
#     should return a new string where the original is repeated that number of times

def repeat(str, num)
   str * num
end


# yell
#     should accept a string as an arg
#     should return a yelled version of the string

def yell(str)
   str.upcase! << '!'
end


# alternating_case
#     should accept a sentence string as an arg
#     should return the sentence with words alternating between uppercase and lowercase

def alternating_case(str)
   arr = str.split.each_with_index do
      |word, index|
      if index % 2 == 0
         word.upcase!
      else
         word.downcase!
      end
   end
   
   arr.join(' ')
end