=begin
Write a method that returns true if its integer argument is palindromic, false otherwise. 
A palindromic number reads the same forwards and backwards.
=end
=begin
  Input: - Integer
  Output: Boolean
  
  Rules/Requirements:
    - A palindromic number reads the same forwards and backwards
    - Returns true if its integer argument is palindromic, false otherwise.
    
  Data Structure:
    - Integers
    - Booleans
    - Strings (For reversal)
  
  Algroithm:
    - Given an integer argument: num
      - Convert the number to a string:
        - Compare the reversed number string to the original number string
          - Implicit Return
=end

def palindromic_number?(num)
  num.to_s == num.to_s.reverse
end

p palindromic_number?(34543) == true
p palindromic_number?(123210) == false
p palindromic_number?(22) == true
p palindromic_number?(5) == true