class Board

    attr_reader :size

    # #initialize
    # should accept a number, n, as an arg
    # should set @grid to be a 2D array with n rows and n columns
    # should set all elements of @grid to :N
    # should make each subarray of @grid refer to a distinct array
    # should set @size to be a number representing the total size of the grid (n * n)
    
    def initialize(size)
        @grid = Array.new(size) {Array.new(size, :N)}
        @size = size**2
    end

    # #[]
    # should accept an array containing a pair of indices in the form [row, column] representing a position on the @board
    # should return the element of @grid at the given position
    
    def [](indices)
        @grid[indices[0]][indices[1]]
    end

    def []=(position, value)
        @grid[position] = value
    end
end
