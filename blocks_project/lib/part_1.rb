require "byebug"

# select_even_nums
# should accept an array of numbers as an arg
# should return an array containing only the even numbers
# should use Array#select

def select_even_nums(arr)
    arr.select{|el| el  % 2 == 0}
end


# reject_puppies
# should accept an array of dog hashes as an arg
# should return an array containing the dogs that are older than 2 years
# should use Array#reject

def reject_puppies(dog_arr)
    dog_arr.reject{|hash| hash['age'] <= 2}
end


# count_positive_subarrays
# should accept a 2D array as an arg
# should return the number of subarrays whose elements sum to a positive quantity
# should use Array#count

def count_positive_subarrays(arr)
    arr.map! do
        |subarr|
        subarr.sum
    end

    arr.count {|sum| sum > 0}
end


# aba_translate
# should accept a word string as an arg
# should transform the word by putting a 'b' after every vowel and adding that same vowel

def aba_translate(word)
    vowels = "aeuio"
    new_word = ''
    starting = 0
    word.each_char.with_index do
        |char, i|
        if vowels.include?(char)
            # debugger
            new_word << word[starting..i] << 'b' + char
        else
            new_word << word[starting..i]
        end
        starting = i+1
    end

    new_word
end


# aba_array
# should accept an array of words as an arg
# should return a new array where every word has been 'aba translated'
# should use Array#map
# should use your previous aba_translate method

def aba_array(arr)
    arr.map {|word| aba_translate(word)}
end