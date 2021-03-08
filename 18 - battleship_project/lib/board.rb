class Board

    attr_reader :size

    # ::print_grid
    # should accept a 2D array representing a grid as an arg
    # should print each row of @grid so every element in a row is separated with a space

    def self.print_grid(grid)
        puts
        grid.each do
            |row|
            puts row.join(' ')
        end
    end

    # #initialize
    # should accept a number, n, as an arg
    # should set @grid to be a 2D array with n rows and n columns
    # should set all elements of @grid to :N
    # should make each subarray of @grid refer to a distinct array
    # should set @size to be a number representing the total size of the grid (n * n)
    
    def initialize(size)
        @grid = Array.new(size) {Array.new(size, :N)}
        @size = size * size
    end

    # #[]
    # should accept an array containing a pair of indices in the form [row, column] representing a position on the @board
    # should return the element of @grid at the given position
    
    def [](position)
        row, col = position
        @grid[row][col]
    end

    # #[]=
    # should accept a position and value as args
    # should set the given position of @grid to the given value
    
    def []=(position, value)
        row, col = position
        @grid[row][col] = value
    end

    # #num_ships
    # should return a number representing the count of :S values in @grid
    
    def num_ships
        @grid.flatten.count(:S)
    end

    # #attack
    # should accept a position as an arg
    # should call Board#[] and Board#[]= to check and set @grid
    # when the given position of @grid has a value of :S
    #     should set that value to :H
    #     should print 'you sunk my battleship!'
    #     should return true to indicate the attack hit a ship
    # when the given position of @grid does not have a value of :S
    #     should set that value to :X
    #     should return false to indicate the attack missed
        
    def attack(position)
        if self[position] == :S
            self[position] = :H
            puts "\nyou sunk my battleship"
            return true
        else
            self[position] = :X
            return false
        end
    end

    # #place_random_ships
    # should randomly set 25% of the @grid's elements to :S
    # should always set 25% of the @grid's elements based on the @grid's dimensions
    
    def place_random_ships
        ship_count = @size / 4
        length = @grid.length
        until num_ships == ship_count do
            position = [rand(0...length), rand(0...length)]
            self[position] = :S
        end 
    end

    # #hidden_ships_grid
    # should return a 2D array representing the grid where every :S is replaced with an :N
    # should not mutate the original @grid
    
    def hidden_ships_grid
        @grid.map do
            |row|
            row.map do
                |el|
                if el == :S
                    :N
                else
                    el
                end
            end
        end
    end

    # #cheat
    # should call Board::print_grid with @grid as an arg
    
    def cheat
        Board.print_grid(@grid)
    end

    # #print
    # should call Board::print_grid with the #hidden_ships_grid as an arg
    
    def print
        Board.print_grid(hidden_ships_grid)
    end
end
