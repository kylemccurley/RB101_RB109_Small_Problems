=begin
  Given a string that consists of some words and an assortment of non-alphabetic characters,
  write a method that returns that string with all of the non-alphabetic characters replaced by spaces. 
  If one or more non-alphabetic characters occur in a row,
  you should only have one space in the result (the result should never have consecutive spaces).
=end

=begin
  Input: String
  Output: String
  
  Rules/Requirements:
    - Returns that string with all of the non-alphabetic characters replaced by spaces
    - If one or more non-alphabetic characters occurs in a row
      - You should only have one space in the result
    - Result should never have consecutive spaces

  Data Structure:
    - Strings

  Mental Model: 
    Write a method that returns a string with all of the non-alphabetic characters
    replaced by spaces. If one or more non-alphabetic characters occur in a row,
    one space will be placed.

  Algorithm:
    Given a string of some words and an assortment of non-alphabetic characters: str
      - Initialize an array of alphabetic characters
      - Initialize an output array: output
      - Split str into an array of characters(String#chars), iterate(Array#each):
        - If the character is not included in the alphabetic character array:
          - Append a space to the output array.
            - Unless the last character in the output array is a space
        - If the character is included in the alphabetic character array:
          - Apppend the character to output array.
      - Return the output array (Array#join)
=end

ALPHABETIC_CHARS = ('a'..'z').to_a

def cleanup(string)
  output = []

  string.chars.each do |char|
    if ALPHABETIC_CHARS.include?(char)
      output << char
    else
      output << ' ' unless output.last == ' '
    end
  end

  output.join
end

p cleanup("---what's my +*& line?") == ' what s my line '