=begin
In the modern era under the Gregorian Calendar, leap years occur in every year that
is evenly divisible by 4, unless the year is also divisible by 100. 
If the year is evenly divisible by 100, then it is not a leap year unless the year is evenly divisible by 400.

Assume this rule is good for any year greater than year 0. 
Write a method that takes any year greater than 0 as input, 
and returns true if the year is a leap year, or false if it is not a leap year.
=end

=begin
  Input: Integer (Any year greater than year 0)
  Output: Boolean
  
  Rules/Requirements:
    - If the year is evenly divisible by 100, then it is not a leap year unless
    the year is evenly divisible by 400.
    - Good for any year greater than year 0.
    - Leap years occur in every year that is evenly divisible by 4. 
      - Unless the year is also divisible by 100.
    
  Data Structure:
    - Integers
    - Booleans

  Mental Model: Write a method that returns a boolean value if the given integer is considered a leap year:
                

  Algorithm:
    #Given an integer: year
      - If the year is divisible by 100:
        - Return false
      - If the year is divisible by 400:
        - Return true
      - Otherwise:
        - Leap year divided by 4 (year % 4)
=end

def leap_year?(year)
  if year % 100 == 0
    false
  elsif year % 400 == 0
    true
  else
    year % 4 == 0
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true