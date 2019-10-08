=begin
Write a method named include? that takes an Array and a search value as arguments.
This method should return true 
if the search value is in the array, false if it is not. 
You may not use the Array#include? method in your solution.
=end
=begin
  Input: 1. Array, 
         2. Integer

  Output: - Boolean
  
  Rules/Requirements:
    - Return true if the search value is in the array, false if it is not.
    - You may not use the Array#include? method in your solution.

  Data Structure:
    - Arrays
    - Integers
    - Booleans

  Algorithm:
    #Given an array and an integer as an argument: Array, Integer
      - Initialize a local variable: boolean -> false
      - Iterate through each element in the Array:
        - If the element when compareed to Integer is true
          - Set boolean to true
      - Return boolean
=end

def include?(arr, int)
  arr.each { |element| return true if element == int }
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false