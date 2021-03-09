# no_dupes?

# Write a method no_dupes?(arr) that accepts an array as an arg and returns an new array containing the elements that were not repeated in the array.



# no_consecutive_repeats?

# Write a method no_consecutive_repeats?(arr) that accepts an array as an arg. The method should return true if an element never appears consecutively in the array; it should return false otherwise.



# char_indices

# Write a method char_indices(str) that takes in a string as an arg. The method should return a hash containing characters as keys. The value associated with each key should be an array containing the indices where that character is found.



# longest_streak

# Write a method longest_streak(str) that accepts a string as an arg. The method should return the longest streak of consecutive characters in the string. If there are any ties, return the streak that occurs later in the string.



# bi_prime?

# Write a method bi_prime?(num) that accepts a number as an arg and returns a boolean indicating whether or not the number is a bi-prime. A bi-prime is a positive integer that can be obtained by multiplying two prime numbers.
# For Example:

#     14 is a bi-prime because 2 * 7
#     22 is a bi-prime because 2 * 11
#     25 is a bi-prime because 5 * 5
#     24 is not a bi-prime because no two prime numbers have a product of 24



# vigenere_cipher

# A Caesar cipher takes a word and encrypts it by offsetting each letter in the word by a fixed number, called the key. Given a key of 3, for example: a -> d, p -> s, and y -> b.

# A Vigenere Cipher is a Caesar cipher, but instead of a single key, a sequence of keys is used. For example, if we encrypt "bananasinpajamas" with the key sequence 1, 2, 3, then the result would be "ccqbpdtkqqcmbodt"

# Write a method vigenere_cipher(message, keys) that accepts a string and a key-sequence as args, returning the encrypted message. Assume that the message consists of only lowercase alphabetic characters.



# vowel_rotate

# Write a method vowel_rotate(str) that accepts a string as an arg and returns the string where every vowel is replaced with the vowel the appears before it sequentially in the original string. The first vowel of the string should be replaced with the last vowel.



# String#select

# Extend the string class by defining a String#select method that accepts a block. The method should return a new string containing characters of the original string that return true when passed into the block. If no block is passed, then return the empty string. Do not use the built-in Array#select in your solution.



# String#map!

# Extend the string class by defining a String#map! method that accepts a block. The method should modify the existing string by replacing every character with the result of calling the block, passing in the original character and it's index. Do not use the built-in Array#map or Array#map! in your solution.



# multiply

# Write a method multiply(a, b) that takes in two numbers and returns their product.
# You must solve this recursively (no loops!)
# You must not use the multiplication (*) operator



# lucas_sequence

# The Lucas Sequence is a sequence of numbers. The first number of the sequence is 2. The second number of the Lucas Sequence is 1. To generate the next number of the sequence, we add up the previous two numbers. For example, the first six numbers of the sequence are: 2, 1, 3, 4, 7, 11, ...

# Write a method lucasSequence that accepts a number representing a length as an arg. The method should return an array containing the Lucas Sequence up to the given length. Solve this recursively.



# prime_factorization

# The Fundamental Theorem of Arithmetic states that every positive integer is either a prime or can be represented as a product of prime numbers.

# Write a method prime_factorization(num) that accepts a number and returns an array representing the prime factorization of the given number. This means that the array should contain only prime numbers that multiply together to the given num. The array returned should contain numbers in ascending order. Do this recursively.