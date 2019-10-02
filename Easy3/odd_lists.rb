=begin
Write a method that returns an Array that contains every other element of an Array that is passed in as an argument. 
The values in the returned list should be those values that are in the 1st, 3rd, 5th, 
and so on elements of the argument Array.
=end

=begin
  Input: - Array
  Output:  - Array
  
  Rules/Requirements:
    - Value in the returned list should be those values that are in 
    the 1st, 2nd 3rd and so on elements of the argument Array.
    - Returns every other element of an array.

  Data Structure:
    - Arrays
    - Integers
    - Strings
  
  Algorithm:
    - Given an array: arr
      - Initialize an empty array: output.
      - Iterate through the array with index (Array#each_with_index):
        - Append the element to output array:
          - If the index is odd.
      - Output the output array
=end

def oddities(arr)
  output = []
  arr.each_with_index { |element, index| output << element if index.even? }
  p output
end 

p oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
p oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
p oddities(['abc', 'def']) == ['abc']
p oddities([123]) == [123]
p oddities([]) == []