=begin
  Input: Integer
  Output: String
  
  Rules/Requirements:
    - May not use the standard conversion methods available
    - Method should analyze and manipulate the number.
    
  Algorithm:
    Given an integer: int
      - Initialize an array from '0' to '9'
      - Loop until number is 0
        - Using parallel assignment:
          - Use Integer#divmod(10) to assign:
            - The value of the number divided by 10 -> number
            - The remainder of the division -> remainder
        - Prepend the string of the remainder using key-value reference
      - Return the result
=end

def integer_to_string()
  case number <=> 0
  when -1 then "-#{integer_to_string(-number)}"
  when +1 then "+#{integer_to_string(number)}"
  else         integer_to_string(number)
  end
end