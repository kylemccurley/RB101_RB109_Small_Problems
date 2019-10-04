=begin
Write a method that takes an Array of 
Integers between 0 and 19, and returns 
an Array of those Integers 
sorted based on the English words for each number:

zero, one, two, three, four, 
five, six, seven, eight, nine,
ten, eleven, twelve, thirteen, 
fourteen, fifteen, sixteen, 
seventeen, eighteen, nineteen
=end

=begin
  Input: - Array (Elements: Integers between 0 and 19)
  Output: Array (Integers sorted based on English words)
  
  Rules/Requirements:
    - Returns an array of integers sorted based on English words

  Algorithm:
    Given an array of integers between 0 and 19: arr_nums.
      - Initialize an array of key-value pairs:
        - Key: Integer
        - Value: String
      - Initialize an empty array: english_nums
      - Iterate through each integer in arr_nums:
        - Using key-reference, append the output to english_nums
      - Call Array#sort on english nums.
        - Implicit Return
=end

INT_TO_STRING = %w(zero one two three four five six seven eight nine ten eleven twelve thirteen
                   fourteen fifteen sixteen seventeen eighteen nineteen)

def alphabetic_number_sort(numbers)
  numbers.sort_by { |number| INT_TO_STRING[number] }
end

p alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]