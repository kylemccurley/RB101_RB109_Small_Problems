=begin
  The String#to_i method converts a string of numeric characters (including an optional plus or minus sign) to an Integer. String#to_i 
  and the Integer constructor (Integer()) behave similarly.
  In this exercise, you will create a method that does the same thing.

Write a method that takes a String of digits, 
and returns the appropriate number as an integer. 
You may not use any of the methods mentioned above.

For now, do not worry about leading + or - signs,
nor should you worry about invalid characters; assume all characters will be numeric.

You may not use any of the standard conversion methods available in Ruby,
such as String#to_i, Integer(), etc. 
Your method should do this the old-fashioned way and calculate the result by analyzing the characters in the string.
=end
=begin
  Input: String
  Output: Integer
  
  Data Structure:
    - Strings
    - Integers
  
  Rules/Requirements:
    - You may not use any of the standard conversion methods available in Ruby.
    - Do not worry about leading + or - signs.
    - Calculate the result by analyzing the characters in the string.
  
  Data Structure:
    - Strings
    - Integers
    - Hashes
    
  Algorithm:
    Given a string: numbers
      - Initialize and define a hash of numbers and strings: DIGITS
      - Iterate through each character (String#chars) of the string:
        - Using hash-key reference, transform strings to integers using DIGITS.
          - Store as a local variable: digits
      
      - Initialize a local variable to 0: value
      - Iterate through the strings array:
        - Multiply the value by 10 and add the digit to it.
          - Reassigning value local variable
      - Return the value local variable
=end

DIGITS = {
    '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5,
    '6' => 6, '7' => 7, '8' => 8, '9' => 9,
    '0' => 0
}

def string_to_integer(string)
  
  digits = string.chars.map { |digit| DIGITS[digit] }
  
  value = 0
  digits.each { |num| value = 10 * value + num }
  value
end

p string_to_integer('4321') == 4321
p string_to_integer('570') == 570