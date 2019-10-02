=begin
Build a program that asks a user for the length and width of a room in meters 
and then displays the area of the room in both square meters and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.


Example Run

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7

The area of the room is 70.0 square meters (753.47 square feet).
=end

=begin
  Input: N/A (User Input: Length, Width)
  Output: String
  
  Rules/Requirements:
    - Do not worry about validating the input.
    - 1 square meter == 10.7639 square feet
    - Asks user for the length and the width of the room in meters.
    - Prints the area of the room in square meters.

  Data Structure:
    - Strings
    - Integers
    
  Algorithm:
    - Initialize the constant METERS_TO_FEET: 10.7639ft
    - Ask the user for the length of the room in meters
      - Store as a local variable: length_meters
    - Ask the user for the width of the room in meters
      - Store as a local variable: width_meters
    - Calculate the area of the room in square meters: length_meters, width_meters
      - Store as a local variable: area_meters.
    - Calculate the area of the room in square feet. (Area_meters * METERS_TO_FEET)
    - Print the area of the room in square meters and square feet.
=end

METERS_TO_FEET = 10.7639

def area_of_room()
  puts 'Please enter the length of the room in meters:'
  length_meters = gets.chomp.to_i
  puts 'Please enter the width of the room in meters'
  width_meters = gets.chomp.to_i

  area_meters = length_meters * width_meters
  area_feet = (area_meters * METERS_TO_FEET).round(2)

  puts "The area of the room is #{area_meters} square meters (#{area_feet} square feet)"
end

area_of_room()

