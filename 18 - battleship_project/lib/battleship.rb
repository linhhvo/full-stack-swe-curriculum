require_relative "board"
require_relative "player"

class Battleship

    attr_reader :board, :player
    # #initialize
    # should take in a number, n, representing the length of the board
    # should set @player to a new Player instance
    # should call Board::new with the given length
    # should set @board to a Board instance with size n * n
    # should set @remaining_misses to half the size of the board
    
    def initialize(length)
        @player = Player.new
        @board = Board.new(length)
        @remaining_misses = @board.size / 2
    end

    # #start_game
    # should randomly place ships on the @board
    # should print the number of ships placed on the @board
    # should print the @board

    def start_game
        @board.place_random_ships
        puts "\nThere are #{@board.num_ships} ships."
        @board.print
    end

    # #lose?
    # when @remaining_misses is less than or equal to zero
    # should print 'you lose'
    # should return true
    # when @remaining_misses is greater than zero
    # should return false

    def lose?
        if @remaining_misses <= 0
            puts "\nYou lose!"
            return true
        else
            return false
        end
    end

    # #win?
    # should call Board#num_ships on the @board
    # when there are no ships left on the @board
    # should print 'you win'
    # should return true
    # when there are remaining ships on the @board
    # should return false

    def win?
        if @board.num_ships == 0
            puts "\nYou win!"
            return true
        else
            return false
        end
    end

    # #game_over?
    # should return true if the game has been won or lost
    # should return false if the game is not over
    
    def game_over?
        if lose? || win?
            @board.cheat
            return true
        end
        false
    end

    # #turn
    # should get a move from the @player
    # should attack the position specified by the @player
    # should print the @board
    # should print the new number of @remaining_misses
    # when the attack is not successful
    #     should decrement @remaining_misses
    # when the attack is successful
    #     should not decrement @remaining_misses

    def turn
        move_position = @player.get_move

        until valid_move?(move_position)
            move_position = @player.get_move
        end

        if !@board.attack(move_position)
            @remaining_misses -= 1
        end

        @board.print
        puts "\nYou have #{@remaining_misses} remaining misses"
    end

    # Check that the position player enters is within the board range

    def valid_move?(move_position)
        return false if move_position.length != 2

        move_position.all? {|position| position.abs <= Math.sqrt(@board.size)}
    end
end
