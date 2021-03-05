class Dog
    #   #initialize
    #   should accept a name (string), breed (string), age (number), bark (string), and favorite_foods (array) as arguments
    #   should set the instance variables @name, @breed, @age, @bark, @favorite_foods
    
    def initialize(name, breed, age, bark, favorite_foods)
        @name = name
        @breed = breed
        @age = age
        @bark = bark
        @favorite_foods = favorite_foods
    end

    #   #name
    #   should get (return) the dog's name instance variable

    def name
        @name
    end

    #   #breed
    #   should get (return) the dog's breed instance variable

    def breed
        @breed
    end

    #   #age
    #   should get (return) the dog's age instance variable

    def age
        @age
    end

    #   #age=
    #   should set the dog's age instance variable to a new number

    def age=(num)
        @age = num
    end

    #   #bark
    #   should return the dog's uppercase bark if the dog's age is greater than 3
    #   should return the dog's lowercase bark if the dog's age is less than or equal to 3

    def bark
        if @age > 3
            @bark.upcase
        else
            @bark.downcase
        end
    end

    #   #favorite_foods
    #   should return the dog's favorite_foods instance variable

    def favorite_foods
        @favorite_foods
    end

    #   #favorite_food?
    #   should accept a food item (string) as a parameter and return a boolean indicating whether the dog's @favorite_foods contain that food item
    #   should match food items regardless of capitalization

    def favorite_food?(string)
        @favorite_foods.map(&:downcase).include?(string.downcase)
    end
end
