=begin
Modify the word_sizes method from the 
previous exercise to exclude non-letters 
when determining word size. For instance, 
the length of "it's" is 3, not 4.
=end

=begin
  Input: String
  Output: Hash
  
  Rules/Requirements:
    - Modify from previous method to exclude non-letters
    when determining word size.
=end

ALPHABETIC_CHARS = ('a'..'z').to_a

def word_sizes(str)
  occurances = Hash.new(0)

  str.split(' ').each do |word|
    clean_word = word.delete('^A-Za-z')
    occurances[clean_word.size] += 1
  end

  occurances
end

p word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 2 }
p word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 3 }
p word_sizes("What's up doc?") == { 5 => 1, 2 => 1, 3 => 1 }
p word_sizes('') == {}