=begin
Write a method that takes two strings as arguments, determines the longest of the two strings, 
and then returns the result of concatenating the shorter string, the longer string, 
and the shorter string once again. 
You may assume that the strings are of different lengths.
=end

=begin
  Input: - 2x Strings
  Output: - String
  
  Rules/Requirements:
    - You may assume that the strings are of different lengths.
    - Returns the result of concatenating the shorter string, longer string, and shorter string
    - Determines the longest of the two strings.
    
  Data Structure:
    - Strings
    
  Algorithm:
    - Given two strings: str1, str2
      - If the length of str1 is larger than str2 length:
        - str2 + str1 + str2
          - Implicit Return
      - If the length of str2 is larger than str1 length:
        - str1 + str2 + str1
          - Implicit Return
=end

def short_long_short(str1, str2)
  if str1.length > str2.length
    str2 + str1 + str2
  elsif str2.length > str1.length
    str1 + str2 + str1
  end
end

short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"