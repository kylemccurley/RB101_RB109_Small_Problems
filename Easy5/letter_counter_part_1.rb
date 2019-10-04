=begin
Write a method that takes a string with one or more space separated words 
and returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.
=end

=begin
  Input: String
  Output: Hash
  
  Rules/Requirements:
    - Words consist of any string of characters that do not include a space
    - Returns a hash that shows the number of words of different sizes.
    - Input string contains one or more space-separated words
    
  Data Structures: 
    - Strings
    - Hashes
    - Arrays?
  
  Mental Model: Write a method that takes a string with one or more space-separated words
  and returns a hash that shows the number of words of different sizes.
  
  Algorithm:
    - Given a string of one or more space-sepatated words: string
      - Initialize an empty hash using default values
      - Split string with spaces, iterate through each word (Array#each):
        - Using key-reference, assign:
          - Key: Size of the word.
          - Value: Number of occurances of the word.
      - Return the hash.
=end

def word_sizes(str)
  occurances = Hash.new(0)

  str.split(' ').each do |word|
    occurances[word.size] += 1
  end

  occurances
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
p word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
p word_sizes('') == {}