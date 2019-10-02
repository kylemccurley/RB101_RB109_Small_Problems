=begin
Write a program that solicits 6 numbers from the user, 
then prints a message that describes whether or not the 6th number appears amongst the first 5 numbers.
=end

=begin
==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].
=end

=begin
  Input: (No Arguments)
  Output: - String (The number 17 appears in...)
  
  Data Structure:
    - Strings
    - Integers
    - Arrays
    
  Algorithms: 
    - Given no arguments
    - Initialize an array: numbers
    - Iterate through array for numbers(1st, 2nd, 3rd, 4th 5th, last):
      - Using string interpolation: Ask the user for the numbers:
        - Store in empty array
    - Initialize a last number local variable
      - (Array#pop)
    - If last number is included in numbers array(Array#include?):
      - Print that the number is included in the array
    - Otherwise:
      - Print that the number is not included in the array.
=end

def searching101()
  numbers = []

  ['1st', '2nd', '3rd', '4th', '5th', 'last'].each do |num|
    puts "Please enter the #{num} number:"
    numbers << gets.chomp.to_i
  end

  last_number = numbers.pop
  if numbers.include?(last_number)
    puts "The number #{last_number} is included in #{numbers}"
  else
    puts "The number #{last_number} is not included in #{numbers}"
  end
end

searching101()