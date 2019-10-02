=begin
Build a program that randomly generates and prints Teddy's age. 
To get the age, you should generate a random number between 20 and 200.
=end

=begin
  Input: N/A
  Output: String
  
  Rules/Requirements:
    - Randomly generates and prints Teddy's Age
    - Generate a random number between 20 and 200.
    
  Data Structure:
    - Integers
    - Strings
    
  Algorithm:
    - Pass the range 20..200 to the class method Kernel#rand
      - Store as a local variable: age.
    - Print the age local variable.
=end

def age()
  age = rand(20..200)
  puts "Teddy is #{age} years old!"
end

age()