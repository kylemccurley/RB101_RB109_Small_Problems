=begin
Write a method that takes one integer argument, which may be positive, negative, or zero. 
This method returns true if the number's absolute value is odd. 
You may assume that the argument is a valid integer value.
=end

=begin
  Input: - Integer
  Output: - Boolean
  
  Rules/Requirements:
    - The argument is a valid integer value.
    - Returns true if the numbers absolute value is odd
    - Not allowed to use Integer#odd? or Integer#even? in your solution

  Data Structure:
    - Integers
    - Booleans
    
  Algorithm:
    Given an integer: int
    - Check if the integer divided by 2 is equal to zero (Check if it is odd or even)
      - Return the value
=end

def is_odd?(integer)
  integer % 2 == 0 ? false : true
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true