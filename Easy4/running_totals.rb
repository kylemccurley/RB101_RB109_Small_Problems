=begin
Write a method that takes an Array of numbers, and returns 
an Array with the same number of elements, 
and each element has the running total from the original Array.
=end
=begin
  Input: Array
  Output: Array
  
  Data Structure:
    - Arrays
    - Integers
  
  Rules/Requirements:
    - Returns an array with each element having the running total from the original array.
  
  Algorithm:
    - Given an array of [elements: integers]: arr
      - Initialize a sum integer: 0
      - Initialize an output array: arr
      - Iterate through each element in arr:
        - Reassign the sum local variable to add the |element|
        - Append the element to the output array.
      - Return the output array.
=end

def running_total(arr)
  sum = 0
  arr.map { |num| sum += num }
end

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []