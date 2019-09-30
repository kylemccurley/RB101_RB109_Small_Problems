=begin
Write a method that takes one argument, a positive integer,
and returns a string of alternating 1s and 0s, always starting with 1.
The length of the string should match the given integer.
=end

=begin
  Input: - A positive Integer
  Output: - String of alternating 1's and 0's

  Data Structure:
    - Integers
    - Strings

  Rules/Requirements:
    - The length of the string should match the given integer.
    - Returns a string of alternating 1s and 0s.
    - Always starts with 1.
    
  Algorithm:
    - Given a positive integer: int
      - Initialize an array: output
      - Iterate int number of times:
        - For the last element in the array (Index: -1)
          - If '0'
            - Append a '1'
          - If '1'
            - Append a '0'
          - Else
            - Append a '1'
     - Join the array output into a string.
       - Implicit return.
=end

def stringy(integer)
  output = []
  integer.times do 
    case output[-1]
      when '0' then output << '1'
      when '1' then output << '0'
      else
        output << '1'
    end
  end
  output.join('')
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'