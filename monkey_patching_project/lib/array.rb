# Monkey-Patch Ruby's existing Array class to add your own custom methods

require 'byebug'

class Array

    # #span
    # when the array contains numbers as elements
    #     should return the difference between the largest and smallest element
    # when the array is empty
    #     should return nil

    def span
        self.max - self.min if !self.empty?
    end

    # #average
    # when the array contains numbers as elements
    #     should return a number representing the average value of the elements
    # when the array is empty
    #     should return nil

    def average
        self.sum.fdiv(self.length) if !self.empty?
    end

    # #median
    # when there is an odd number of elements
    #     should return the middle element of the array when sorted
    # when there is an even number of elements
    #     should return the average of the two middle elements when sorted
    # when the array is empty
    #     should return nil

    def median
        sorted = self.sort
        mid = self.length / 2

        return nil if self.empty?

        if self.length.even?
            [sorted[mid-1], sorted[mid]].average
        else
            sorted[mid]
        end
        
    end

    # #counts
    # should return a hash representing the count of each element of the array
    
    def counts
        count = Hash.new(0)
        self.each {|el| count[el] += 1}
        count
    end

    # #my_count
    # should accept any value as an argument and return the number of times that value appears in the array
    # should not use the built-in Array#count
    
    def my_count(value)
        count = 0
        self.each {|el| count += 1 if el == value}
        count
    end

    # #my_index
    # should accept any value as an argument and return the index where that element is found in the array
    # should not use the built-in Array#index
    # when the value appears multiple times in the array
    #     should return the smallest index where it is found
    # when the value does not appear in the array
    #     should return nil
        
    def my_index(value)
        self.each_with_index {|el, i| return i if el == value}
        nil
    end

    # #my_uniq
    # should return a new array without duplicate elements in the order they first appeared in the original array
    # should not use the built-in Array#uniq
    
    def my_uniq
        new_arr = []
        self.each {|el| new_arr << el if !new_arr.include?(el)}
        new_arr
    end

    # #my_transpose
    # should transpose a 2D array with square dimensions by returning a new 2D array where the horizontal rows are converted to vertical columns
    # should not use the built-in Array#transpose
    
    def my_transpose
        new_arr = Array.new(self.length) {Array.new}

        self.each_with_index do
            |subarr, outer_i|
            subarr.each_with_index {|el, inner_i| new_arr[inner_i][outer_i] = el}
        end
        new_arr
    end
end
