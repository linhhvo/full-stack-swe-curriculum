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
    (2...num).each do
        |divisor|
        return false if num % divisor == 0
    end
    true
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
        else
            char_arr << char
        end
    end
    true
end


# dupe_indices
#   should accept an array as an arg
#   should return an hash where keys are the elements that were repeated in the array and values are the indices where that element appears

def dupe_indices(array)
    dupe_hash = {}
    array.each_with_index do
        |el, i|
        if dupe_hash.include? (el)
            dupe_hash[el] << i
        else
            dupe_hash[el] = [i]
        end
    end

    dupe_hash.select! {|key, value| value.length > 1}
end


def ana_array(arr_1, arr_2)
    return false if arr_1.length != arr_2.length

    
end

def custom_sort(arr)
    ()
end