class Hangman
  DICTIONARY = ["cat", "dog", "bootcamp", "pizza"]

    # ::random_word
    # should return a random word in the dictionary
    # should call Array#sample

    def self.random_word
        DICTIONARY.sample
    end

    def initialize
        @secret_word = Hangman.random_word
        @guess_word = Array.new(@secret_word.length, '_')
        @attempted_chars = []
        @remaining_incorrect_guesses = 5
    end

    # #guess_word
    # should get (return) @guess_word
    
    def guess_word
        @guess_word
    end

    # #attempted_chars
    # should get (return) @attempted_chars

    def attempted_chars
        @attempted_chars
    end

    # #remaining_incorrect_guesses
    # should get (return) @remaining_incorrect_guesses

    def remaining_incorrect_guesses
        @remaining_incorrect_guesses
    end

    # #already_attempted?
    # should accept a char as an arg
    # when the given char is in @attempted_chars
    # should return true
    # when the given char is not in @attempted_chars
    # should return false

    def already_attempted? (char)
        @attempted_chars.include?(char)
    end


    # #get_matching_indices
    # should accept a single char as an arg
    # should return an array containing all indices of @secret_word where the char can be found
    # when the char is not found in @secret_word
    #     should return an empty array

    def get_matching_indices(char)
        indices = []
        @secret_word.each_char.with_index {|el, i| indices << i if char == el}
        indices
    end

    # #fill_indices
    # should accept a char and an array of indices
    # should set the given indices of @guess_word to the given char

    def fill_indices(char, indices)
        indices.each {|i| @guess_word[i] = char}
    end

    # #try_guess
    # should accept a char as an arg
    # should call Hangman#already_attempted?
    # should call Hangman#get_matching_indices with the char
    # should call Hangman#fill_indices with the char and it's matching indices
    # if the char was already attempted
    #     should print 'that has already been attempted'
    #     should return false to indicate the guess was previously attempted
    # if the char was not already attempted
    #     should add the char to @attempted_chars
    #     should return true to indicate the guess was not previously attempted
    # if the char has no match indices in @secret_word
    #     should decrement @remaining_incorrect_guesses
        
    def try_guess(char)
        @remaining_incorrect_guesses -= 1 if get_matching_indices(char).empty?

        if already_attempted?(char)
            puts 'that has already been attempted'
            return false
        end

        @attempted_chars << char
        fill_indices(char, get_matching_indices(char))
        true
    end

    # #ask_user_for_guess
    # should print 'Enter a char:'
    #    should call gets.chomp to get input from the user
    #    should call Hangman#try_guess with the user's char
    #    should return the return value of Hangman#try_guess
    
    def ask_user_for_guess
        print 'Enter a char: '
        guess = gets.chomp
        try_guess(guess)
    end

    # win?
    # when @guess_word matches @secret_word
    # should print 'WIN'
    # should return true
    # when @guess_word does not match @secret_word
    # should return false
    
    def win?
        if @guess_word.join() == @secret_word
            puts 'WIN'
            return true
        end
        false
    end

    # lose?
    # when @remaining_incorrect_guesses is 0
    # should print 'LOSE'
    # LOSE
    # should return true
    # when @remaining_incorrect_guesses is not 0
    # should return false
    
    def lose?
        if @remaining_incorrect_guesses <= 0
            puts 'LOSE'
            return true
        end
        false
    end

    # game_over?
    # should call Hangman#win?
    # should call Hangman#lose?
    # when the game is won or lost
    # should print @secret_word
    # should return true
    # when the game is not over
    # should return false

    def game_over?
        if win? || lose?
            puts @secret_word
            return true
        end
        false
    end
end
