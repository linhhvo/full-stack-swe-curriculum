# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

require 'byebug'


# largest_prime_factor
#   should accept a number as an arg
#   should return the largest divisor of the number that is also a prime number

def largest_prime_factor(num)
    divisor = num

    while divisor > 1
        return divisor if num % divisor == 0 && is_prime?(divisor)
        divisor -= 1
    end
end

def is_prime? (num)
    return false if num < 2

    (2...num).none? {|divisor| num % divisor == 0 }
end


# unique_chars?
#   should accept a string as an arg
#   when there are no duplicate characters in the string
#     should return true
#   when there are duplicate characters in the string
#     should return false

def unique_chars?(str)
    char_arr = []
    str.each_char do
        |char|
        if char_arr.include? (char)
            return false
        end
        char_arr << char
    end
    true
end


# dupe_indices
#   should accept an array as an arg
#   should return an hash where keys are the elements that were repeated in the array and values are the indices where that element appears

def dupe_indices(array)
    dupe_hash = Hash.new {|hash, key| hash[key] = [] }
    array.each_with_index {|el, i| dupe_hash[el] << i}
    dupe_hash.select {|key, value| value.length > 1}
end


# ana_array
#   should accept two arrays as args
#   should not use Array#sort
#   when the arrays contain the same elements, in any order
#     should return true
#   when the arrays do not contain the same elements
#     should return false

def ana_array(arr_1, arr_2)
    return false if arr_1.length != arr_2.length

    count_hash_1 = Hash.new(0)
    count_hash_2 = Hash.new(0)
    arr_1.each {|el| count_hash_1[el] += 1}
    arr_2.each {|el| count_hash_2[el] += 1}

    count_hash_1 == count_hash_2
end
