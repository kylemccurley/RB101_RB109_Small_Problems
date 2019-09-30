=begin
Write a method that takes one argument, a positive integer, and returns the sum of its digits.

  Input: - A positive integer
  Output: - Integers (Sum of digits)
  
  Data Structure:
    - Integers
    - Strings
    - Arrays
  
  Rules/Requirements:
    - Method returns the sum of an integer's digits
  
  Algorithm:
    Given a positive integer: int
      - Split the string into an array (Integer#to_s#split)
        - Store as local variable: digits
      - Inject the addition operator (Array(:+))
        - Implicit Return
=end

def sum(integers)
  integers.to_s.chars.map(&:to_i).inject(:+)
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45