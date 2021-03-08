class Player
    # #get_move
    # should print 'enter a position with coordinates separated with a space like `4 7`'
    # it should call gets.chomp to get input from the user
    # should return an array containing the player's two input numbers as integers

    def get_move
        print "enter a position with coordinates separated with a space like '4 7': "
        gets.chomp.split().map(&:to_i)
    end
end
