require 'byebug'


# all_words_capitalized?
# should accept an array of words as an arg
# should use Array#all?
# when all words are properly capitalized (first letter of word uppercase, other letters lowercase)
#   should return true
# when at least one word is not capitalized
#   should return false

def all_words_capitalized?(words)
    # debugger
    words.all? {|word| word == word.capitalize}
end


# no_valid_url?
# should accept an array of urls as an arg
# should use Array#none?
# when none of the urls end in '.com', '.net', '.io', or '.org'
#   should return true
# when at least one of the urls end in '.com', '.net', '.io', or '.org'
#   should return false

def no_valid_url?(urls)
    valid = ['.com', '.net', '.io', '.org']
    urls.none? do
        |url|
        valid.any?{|ending| url.end_with?(ending)}
    end
end


# any_passing_students?
# should accept an array of student hashes as an arg
# should use Array#any?
# when at least one student has an average grade of 75 or higher
#   should return true
# when no student has an average grade of 75 or higher
#   should return false

def any_passing_students?(students)
    students.any? do
        |student|
        # debugger
        avg = student[:grades].sum.fdiv(student[:grades].length)
        avg >= 75
    end
end