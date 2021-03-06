class Employee
    # should have getter methods for @name and @title
    attr_reader :name, :title

    # #initialize
    # should accept a name (string) and title (string) as args
    # should set @name and @title with the args
    # should set @earnings to 0
    
    def initialize(name, title)
        @name = name
        @title = title
        @earnings = 0
    end

    # #pay
    # should accept an amount (number) as an arg
    # should increase @earnings by the given amount

    def pay(amount)
        @earnings += amount
    end
end
