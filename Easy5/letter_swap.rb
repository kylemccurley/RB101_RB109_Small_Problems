=begin
Given a string of words separated by spaces, write a method that takes this 
string of words and returns a string in which the first and last letters of every word are swapped.

You may assume that every word contains at least one letter,
and that the string will always contain at least one word. 
You may also assume that each string contains nothing but words and spaces
=end

=begin
Input: String
Output: String

Data Structure:
  - Strings
  - Arrays
  
Rules/Requirements:
  - May assume that every word contains at least one letter
  - String will always contain at least one word.
  - Each string contains nothing but words and spaces
 
Mental Model: 
  Write a method that takes a string of words separated by spaces
  and returns a string in which the first and last letters of every word are swapped.

Algorithm:
  - Given a string of words separated by spaces: string
    - Split the string into an array of words, iterate:
      - Pass the word into a separate method:
        - Swap the first and last characters in the string
          - Store as a local variable: result
    - Join the result with empty spaces.
=end

def swap_first_and_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end

def swap(words)
  result =  words.split(' ').map do |word|
              swap_first_and_last_characters(word)
            end
  result.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'