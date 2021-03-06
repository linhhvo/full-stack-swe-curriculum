class Room

    # #initialize
    # should accept a capacity (number) as an arg and set @capacity
    # should set @occupants to an empty array
    
    def initialize(capacity)
        @capacity = capacity
        @occupants = []
    end

    # #capacity
    # should get (return) @capacity
    
    def capacity
        @capacity
    end

    # #occupants
    # should get (return) @occupants

    def occupants
        @occupants
    end

    # #full?
    # when the number of @occupants is below @capacity
    # should return false
    # when the number of @occupants has met @capacity
    # should return true

    def full?
        return true if @occupants.length == capacity
        false
    end

    # #available_space
    # should return the number of additional occupants the room can take before reaching @capacity
    
    def available_space
        capacity - @occupants.length
    end

    # #add_occupant
    # should accept a person's name (string) as an arg
    # should call Room#full?
    # when the room is not full
    #     should add that name to @occupants
    #     should return true
    # when the room is already full
    #     should not add the name
    #     should return false
        
    def add_occupant(guest)
        return false if full?

        @occupants << guest
        true
    end
end
