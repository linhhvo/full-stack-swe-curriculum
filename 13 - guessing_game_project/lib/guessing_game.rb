class GuessingGame

    # #initialize
    # should accept two numbers, min and max, as args
    # should set @secret_num to a random number between min and max inclusive
    # should call #rand
    # should set @num_attempts to 0
    # should set @game_over to false
    
    def initialize(min, max)
        @secret_num = rand(min..max)
        @num_attempts = 0
        @game_over = false
    end

    # #num_attempts
    # should get (return) @num_attempts

    def num_attempts
        @num_attempts
    end

    # #game_over?
    # should get (return) @game_over

    def game_over?
        @game_over
    end

    # #check_num
    # should accept a num as an arg
    # should increment @num_attempts
    # should set @game_over to true if the num is equal to @secret_num
    # when the num is equal to @secret_num
    # should print 'you win'
    # when the num is greater than @secret_num
    # it should print 'too big'
    # when the num is less than @secret_num
    # it should print 'too small'
    
    def check_num(input)
        @num_attempts += 1
        if input == @secret_num
            @game_over = true
            puts 'you win'
        elsif input > @secret_num
            puts 'too big'
        else
            puts 'too small'
        end
    end

    # ask_user
    # should print 'enter a number'
    # should call #gets to get input from the user
    # should call String#chomp on the input received from the user
    # should call String#to_i on the input string to convert it into an integer number
    # should call GuessingGame#check_num with the user's number

    def ask_user
        puts 'enter a number:'
        input = gets.chomp.to_i
        check_num(input)
    end
end
