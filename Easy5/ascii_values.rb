=begin
Write a method that determines and returns the ASCII string value 
of a string that is passed in as an argument. 
The ASCII string value is the sum of the ASCII values of every character in the string. 
(You may use String#ord to determine the ASCII value of a character.)
=end

=begin
  Input: String
  Output: Integer
  
  Rules/Requirements:
    - Determines and returns the ASCII string value of a string.
    - ASCII string value is the sum of the ASCII values of every character in the string.
    - May use String#ord to determine the ASCII value of a character.

  Data Structure:
    - Strings
    - Integers
  
  Mental Model:
    - Write a method that returns the sum of the ASCII values of every character
    in a string that is passed in as an argument.
  
  Algorithm:
    Given a string: str
      - Initialize a local variable to the integer 0: ascii_sum
      - Iterate through each (String#char) character in the string:
        - Calculate the ascii_value of the character
          - Add to the local variable sum's integer.
      - Return the sum local variable.
=end

def ascii_value(str)
  sum = 0
  str.each_char {|char| sum += sum += digit.ord}
  sum
end

p ascii_value('Four score') == 984
p ascii_value('Launch School') == 1251
p ascii_value('a') == 97
p ascii_value('') == 0