#Print all odd numbers from 1 to 99, inclusive. 
#All numbers should be printed on separate lines.

=begin
  Input: N/A
  Output: - String
  
  Rules/Requirements:
    - All numbers should be printed on separate lines.
    - Print all odd numbers from 1 to 99.

  Data Structures:
    - Integers
    - Strings
    
  Algorithm:
    - Iterate up to 99 (Number passed in as an argument)
      - If the argument is odd:
        - Print the number. (Kernel#puts)
=end

def odd_numbers()
  1.upto(99) { |number| puts number if number.odd? }
end

odd_numbers()