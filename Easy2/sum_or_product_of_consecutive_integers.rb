=begin
Write a program that asks the user to enter an integer greater than 0,
then asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.

Examples:

>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.

>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
=end

=begin
  Input: N/A(No Arguments)
  Output: - String
  
  Rules/Requirements:
    - Asks if the user wants to determine the sum or product of all numbers between 1 and the entered integer.
    - Asks the user to enter an integer greater than 0.
    
  Data Structure:
    - Integers
    - Strings
    
  Algorithm:
    - Prompt the user to enter an integer greater than 0.
      - Store as a local variable
    - Ask user to compute the sum or product
    - Ask for the sum of the integers greater than '0'
=end

def compute_sum(number)
  total = 0
  1.upto(number) { |value| total += value }
  total
end

def compute_product(number)
  total = 1
  1.upto(number) { |value| total *= value }
  total
end

puts ">> Please enter an integer greater than 0"
number = gets.chomp.to_i

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = gets.chomp

if operation == 's'
  sum = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{sum}."
elsif operation == 'p'
  product = compute_product(number)
  puts "The product of the integers between 1 and #{number} is #{product}."
else
  puts "Oops. Unknown operation."
end