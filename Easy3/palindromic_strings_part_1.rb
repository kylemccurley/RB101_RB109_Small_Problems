=begin
Write a method that returns true if the string
passed as an argument is a palindrome, false otherwise. 
A palindrome reads the same forward and backward.
For this exercise, case matters as does punctuation and spaces.
=end

=begin
 Input: String
 Output: Boolean
 
 Rules/Requirements:
   - Case matters as does punctuation and spaces.
   - Returns true if the string passed as an argument
     is a palindrome, false otherwise.
   
   Data Structure:
      - Strings
    
    Algorithm:
      - Given a string: string
        - Does the string compared with String#reverse evaluate to true
          - Implicit return
=end

def palindrome?(str)
  str == str.reverse
end

p palindrome?('madam') == true
p palindrome?('Madam') == false          # (case matters)
p palindrome?("madam i'm adam") == false # (all characters matter)
p palindrome?('356653') == true