=begin
Write a method that takes a string argument 
and returns a new string that 
contains the value of the original string with all consecutive 
duplicate characters collapsed 
into a single character. 
You may not use String#squeeze or String#squeeze!.
=end
=begin
  Input: String
  Output: String
  
  Rules/Requirements:
    - New string contains value of the original string with all consecutive duplicate characters collapsed
    into a single character.
    - May not use String#squeeze or String#squeeze!
  
  Data Structure:
    - Strings
    - Arrays
  
  Mental Model:
  Write a method that takes a string argument and returns a new string 
  with all consecutive duplicate characters collapsed into a single character.
  
  Algorithm:
    Given a string: str
      - Initialize an output array: arr
      - Split str into characters (Array#chars) and iterate through each:
        - Append the character into the output array:
          - Unless the last character (Array#last) is the same as the element
      - Join the output array into a string (Array#join)
        - Implicit Return
=end

def crunch(string)
  output = []
  string.chars.each { output << char unless output.last == char }
  output.join
end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''