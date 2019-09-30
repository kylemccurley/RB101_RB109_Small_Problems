=begin
Write a method that takes one argument, a positive integer,
and returns a list of the digits in the number.
=end
=begin
  Input: - Integer
  Output: - Array
  
  Rules/Requirments:
    - The integer argument is positive
    - Returns a list of the digits in the number
    
  Data Structure:
    - Integers
    - Strings
    - Arrays
  
  Algorithm:
    #Given a positive integer: int
      - Convert the integer into a string
        - Store as a local variable: digits_string
      - String#split and iterate through the elements (Array#map)
        - Convert the integer into a string
=end

def digit_list(integer)
  integer.to_s.split('').map { |digit| digit.to_i }
end

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => true