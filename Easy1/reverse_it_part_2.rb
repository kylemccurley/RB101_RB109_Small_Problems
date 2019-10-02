=begin
Write a method that takes one argument, a string containing one or more words,
and returns the given string with words that contain five or more characters reversed. 
Each string will consist of only letters and spaces. 
Spaces should be included only when more than one word is present.
=end

=begin
  Input: String
  Output: String
  
  Rules/Requirements:
    - Spaces should be included only when more than one word is present
    - Each string will consist of only letters and spaces
    - Returns the given string with words that contain five or more characters reversed.
  
  Data Structure:
    - Strings
    - Arrays

  Algorithm:
    - Given a string: words
      - Initialize an array: output 
      - Split the string into an array of words (Array#split(' '))
      - Iterate through each word:
        - If the size of the word is greater than 5
          - Split the word into characters (String#split(''))
          - Reverse the characters()
          - Join the characters, store in the array
        - Else
          - Store the word into the output array.
      - Join the array with spaces passed into it (Array#join(' '))
=end

def reverse_words(words)
  output = []
  words.split(' ').each do |word|
    if word.size >= 5
      output << word.split('').reverse.join('')
    else
      output << word
    end
  end
  
  output.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS