require 'byebug'

# my_map
# should accept an array and a block as args
# should return a new array where the elements are the results of the block when passed in each element of the original array
# should not use the built-in Array#map

def my_map(arr, &prc)
    new_arr = []
    arr.each {|el| new_arr << prc.call(el)}
    new_arr
end


# my_select
# should accept an array and a block as args
# should return a new array where the elements are elements of the original array where the block resulted in true
# should not use the built-in Array#select

def my_select (arr, &prc)
    new_arr = []
    arr.each {|el| new_arr << el if prc.call(el)}
    new_arr
end


# my_count
# should accept an array and a block as args
# should return a number representing the count of elements that result in true when passed into the block
# should not use the built-in Array#count

def my_count(arr, &prc)
    count = 0
    arr.each {|el| count += 1 if prc.call(el)}
    count
end


# my_any?
# should accept an array and a block as args
# should not use the built-in Array#any?
# when at least 1 element of the array results in true when passed into the block
#   should return true
# when all elements of the array result in false when passed into the block
#   should return false

def my_any?(arr, &prc)
    arr.each{|el| return true if prc.call(el)}
    false
end


# my_all?
# should accept an array and a block as args
# should not use the built-in Array#all?
# when all elements of the array result in true when passed into the block
#   should return true
# when at least 1 of the elements of the array result in false when passed into the block
#   should return false

def my_all? (arr, &prc)
    arr.each {|el| return false if !prc.call(el)}
    true
end


# my_none?
# should accept an array and a block as args
# should not use the built-in Array#none?
# when none of the elements of the array result in true when passed into the block
#   should return true
# when at least 1 element of the array results in true when passed into the block
#   should return false

def my_none? (arr, &prc)
    arr.each {|el| return false if prc.call(el)}
    true
end