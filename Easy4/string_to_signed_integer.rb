=begin
In the previous exercise, you developed a method that converts simple numeric strings to Integers.
In this exercise, you're going to extend that method to work with signed numbers.

Write a method that takes a String of digits, 
and returns the appropriate number as an integer. 
The String may have a leading + or - sign; if the first character is a +, 
your method should return a positive number; if it is a -,
your method should return a negative number. 
If no sign is given, you should return a positive number.

You may assume the string will always contain a valid number.

You may not use any of the standard conversion methods available in Ruby,
such as String#to_i, Integer(), etc. You may, however, 
use the string_to_integer method from the previous lesson.
=end

=begin
  Input: String
  Output: Integer
  
  Data Structure:
    - Strings
    - Integers
    
  Rules/Requirements:
    - String will always contain a valid number
    - May not use any of the standard conversion methods
    - If the first character is a +; method should return a positive number
  
  Mental Model: Write a method that takes a String of digits, and returns the appropriate number
    as an integer.
    
  Algorithm:
    - Given a sequence of integers as strings: str
      - Analyzing the first number of the string:
        - If the first element is a '-':
          - Then pass in the first character to last into the previous method
            - With a - on it
        - If the first element is a '+':
          - Pass in the first character to last (string[1..-1]) to the string_to_integer() method.
            - With a + on it
        - Otherwise:
          - Pass in the whole string into the previous method
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

def string_to_signed_integer(str)
  case str[0]
  when '-'      then (-string_to_integer(str[1..-1]))
  when '+'      then string_to_integer(str[1..-1])
  else               string_to_integer(str)
  end
end

p string_to_signed_integer('4321') == 4321
p string_to_signed_integer('-570') == -570
p string_to_signed_integer('+100') == 100