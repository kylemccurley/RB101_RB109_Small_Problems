#Write a method that takes one argument, a string, and returns a new string with the words in reverse order.
=begin
  Input: - String
  Output: - String
  
  Rules/Requirements:
    - Returns a new string with the words in reverse order.
    
  Data Structure:
    - Arrays
    - Strings
    
  Algorithm:
    Given a string: string
      - Split the string into an array (Element: word).
      - Call the Array#reverse class method on the string.
      - Call Array#join
=end

def reverse_sentence(string)
  string.split(' ').reverse.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'