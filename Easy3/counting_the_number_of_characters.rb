=begin
  Input: (No Arguments) - String
  Output: - String (Ex. Walk, don't run)
  
  Rules/Requirements:
    - Spaces should not be counted as a character
    - Ask the user for an input of a word or multiple words.
    
  Data Structure:
    - Strings
    - Integers
    
  Algorithm:
    - Prompt the user to write a word or multiple words
      - Store the input as a local variable: user_input (Kernel#gets#chomp)
    - Display:
      - Using string interpolation and String#size.
      - 'There are __ characters in ___'
=end
=begin
Write a program that will ask a user for an input of a word or multiple words 
and give back the number of characters.
Spaces should not be counted as a character.

input:

Please write word or multiple words: walk
output:

There are 4 characters in "walk".
input:

Please write word or multiple words: walk, don't run
output:

There are 13 characters in "walk, don't run".
=end

def counting_numbers()
  puts 'Please write a word or multiple words:'
  user_input = gets.chomp
  input_size = user_input.delete(' ').size
  puts "There are #{input_size} characters in \"#{user_input}\""
end

counting_numbers()