require_relative "code"

class Mastermind

    # #initialize
    # should accept a length (number) as an arg
    # should set @secret_code to a random Code instance of the given length
    
    def initialize(length)
        @secret_code = Code.random(length)
    end

    # #print_matches
    # should accept a Code instance as an arg
    # should print the number of exact matches between @secret_code and the arg
    # should print the number of near matches between @secret_code and the arg

    def print_matches(guess_code)
        puts "Number of exact matches: #{@secret_code.num_exact_matches(guess_code)}"
        puts "Number of near matches: #{@secret_code.num_near_matches(guess_code)}"
    end

    # #ask_user_for_guess
    # should print 'Enter a code'
    # should call gets.chomp to get input from the user
    # should call Code::from_string with the user's entered string
    # should print the number of exact and near matches between @secret_code and the user's guessed code
    # should return a boolean indicating whether the user's guessed code is equal to @secret_code
            
    def ask_user_for_guess
        print 'Enter a code: '
        guess_code = Code.from_string(gets.chomp.upcase)
        print_matches(guess_code)
        @secret_code == guess_code
    end
end
