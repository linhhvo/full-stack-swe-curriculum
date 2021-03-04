require 'byebug'

# reverser
# should accept a string and a block as args
# should return the result of the block when passed the string with it's characters reversed

def reverser(str, &prc)
    prc.call(str.reverse)
end


# word_changer
# should accept a sentence string and a block as args
# should return a new sentence where every word becomes the result of the block when passed the original word of the sentence

def word_changer(sentence, &prc)
    sentence_arr = sentence.split()
    sentence_arr.map {|word| prc.call(word)}.join(' ')
end


# greater_proc_value
# should accept a number and two procs as args
# should return the greater result of the two procs when each is passed the number

def greater_proc_value(num, prc_1, prc_2)
    result_1 = prc_1.call(num)
    result_2 = prc_2.call(num)

    return result_1 if result_1 > result_2
    result_2
end


# and_selector
# should accept an array and two procs as args
# should return a new array containing elements of the original array that result in true when passed into both procs

def and_selector(arr, prc_1, prc_2)
    arr.select {|el| prc_1.call(el) && prc_2.call(el)}
end


# alternating_mapper
# should accept an array and two procs as args
# should return a new array where all of the elements at even indices are the results when those elements are passed into the first proc and all of the elements at odd indices are the results when those elements are passed into the second proc

def alternating_mapper(arr, prc_1, prc_2)
    arr.map.with_index do
        |el, i|
        if i.even?
            prc_1.call(el)
        else
            prc_2.call(el)
        end
    end
end