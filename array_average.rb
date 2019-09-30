=begin
Write a method that takes one argument, an array containing integers, 
and returns the average of all numbers in the array. 
The array will never be empty and the numbers will always be positive integers.
=end

=begin
  Input: Array
  Output: Integer
  
  Rules/Requirements:
    - The array will never be empty
    - Numbers will always be positive integers
    - Returns the average of all numbers in the array.
    - Array contains integers.
    
  Data Structure:
    - Integers
    - Arrays
  
  Algorithm:
    Given an array that contains integers: arr
      - Inject the additition operator into the array. (Array#inject(:+))
        - Store as a local variable: sum
      - Divide the sum by the size of the array.
        - Implicit Return
=end

def average(arr)
  arr.inject(:+)/ arr.size
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40