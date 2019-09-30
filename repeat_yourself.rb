=begin
Write a method that takes two arguments, 
a string and a positive integer, 
and prints the string as many times as the integer indicates.
=end

=begin
  Input: - String  - Integer
  Output: - String (Printed)
  
  Rules/Requirements:
    - Prints the stirng as many times as the integer indicates
    
  Data Structure:
    - Integers
    - Strings
    
  Algorithm:
    - Iterate an integer amount of times
      - Print the string
=end

def repeat(string, repetitions)
  repetitions.times { puts string }
end

repeat('Hello', 3)