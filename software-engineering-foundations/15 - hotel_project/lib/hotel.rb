require_relative "room"

class Hotel

    # #initialize
    # should accept a name (string) and hash where keys are room names (strings) and values are corresponding capacities (numbers)
    # should set @name
    # should set @rooms to a new hash where keys are the room names from the hash arg and values are Room instances with the specified capacities
    # should call Room#initialize for each key of the hash arg

    def initialize(name, rooms)
        @name = name
        @rooms = {}
        rooms.each {|room_name, capacity| @rooms[room_name] = Room.new(capacity)}
    end

    # #name
    # should get (return) a version of @name where every word is capitalized
    # should not mutate the original @name

    def name
        name_arr = @name.split()
        name_arr.map(&:capitalize).join(' ')
    end

    # #rooms
    # should get (return) @rooms
    
    def rooms
        @rooms
    end

    # #room_exists?
    # should accept a room name (string) as an arg
    # when the room exists in the hotel
    # should return true
    # when the room does not exist in the hotel
    # should return false

    def room_exists?(room_name)
        if @rooms.include?(room_name)
            return true
        end
        false
    end

    # #check_in
    # should accept a person (string) and a room name (string) as args
    # should call Hotel#room_exists?
    # when the specified room does not exist
    # should print 'sorry, room does not exist'
    # when the specified room does exist
    # should call Room#add_occupant on the correct Room instance
    # when Room#add_occupant succeeds
    # should print 'check in successful'
    # when Room#add_occupant fails
    # should print 'sorry, room is full'

    def check_in(guest, room_name)
        if !room_exists?(room_name)
            puts 'sorry, room does not exist'
        else
            if @rooms[room_name].add_occupant(guest)
                puts 'check in successful'
            else
                puts 'sorry, room is full'
            end
        end
    end

    # #has_vacancy?
    # when all hotel rooms are full
    # should return false
    # when at least 1 room is available
    # should return true

    def has_vacancy?
        @rooms.values.any? {|room| !room.full?}
    end

    # #list_rooms
    # should print out every room name followed by the number of available spaces in that room
    # should call Room#available_space

    def list_rooms
        @rooms.each do
            |room_name, room|
            puts "#{room_name} : #{room.available_space}"
        end
    end
end
