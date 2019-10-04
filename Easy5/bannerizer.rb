#Write a method that will take a short line of text, and print it within a box.
=begin
  Input: String
  Output: String
  
  Rules/Requirements:
    - Prints the string argument within a box
    - May assume that the input will always fit in the terminal window
  
  Data Structure:
    - Strings
  
  Algorithm:
    Given a string: str
      - Calculate the width:
        - Add 2 to the size of the text
          - Store as local variable: length
      - Store the integer 3 as local variable: height
    - 
=end

def print_in_box(message)
   horizontal_rule = "+#{'-' * (message.size + 2)}+"
   empty_line = "|#{' ' * (message.size + 2)}|"

   puts horizontal_rule
   puts empty_line
   puts "| #{message} |"
   puts empty_line
   puts horizontal_rule
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')