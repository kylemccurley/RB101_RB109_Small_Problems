=begin
Write a program that prompts the user for two positive integers, 
and then prints the results of the following operations on those two numbers: 
addition, subtraction, product, quotient, remainder, and power.
Do not worry about validating the input.
=end

=begin
  Input: (No Arguments) - 2x Integers (User Input)
  Output: - String
  
  Rules/Requirements:
    - Prompts the user for two positive integers
    - Prints results of:
      - Addition, Subtraction, product, quotient, remainder, and power.
    - Do not worry about validating the input
    
  Data Structure:
    - Integers
    - Strings
    
  Algorithm:
    - Initialize an empty array: integers.
    - Initialize an array: operations
      - Elements: operation symbols.
    - Iterate through ['first', 'second']:
      - Using string interpolation:
        - Ask the user for two integers.
          - Store in integers array
    - Iterate through each operation in operations array:
      - Inject the operation to the integers array.
        - Print the result using string interpoltion.
=end

OPERATIONS = [:+, :-, :*, :/, :%, :**]

def algorithmic_integer()
  integers = []
  
  ['First', 'Second'].each do |word|
    puts "Please Enter the #{word} number."
    integers << gets.chomp.to_i
  end
  
  OPERATIONS.each { |op| puts "==> #{integers[0]} #{op} #{integers[-1]} = #{integers.inject(op)}" }
end

algorithmic_integer()