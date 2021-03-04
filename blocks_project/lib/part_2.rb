require 'byebug'


# all_words_capitalized?
# should accept an array of words as an arg
# should use Array#all?
# when all words are properly capitalized (first letter of word uppercase, other letters lowercase)
#   should return true
# when at least one word is not capitalized
#   should return false

def all_words_capitalized?(word_arr)
    # debugger
    word_arr.all? {|word| word == word.capitalize}
end



def no_valid_url?(url_arr)
    urls = ['.com', '.net', '.io', '.org']
    url_arr.none? {|url| }
end