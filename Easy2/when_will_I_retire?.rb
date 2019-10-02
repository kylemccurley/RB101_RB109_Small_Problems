=begin
Build a program that displays when the user will retire and how many years she has to work till retirement.

Example:

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!
=end

=begin
  Input: (No Arguments) - 2x Integer
  Output: - String
  
  Rules/Requirements:
    - Displays:
      - When the user will retire (Year)
      - How many years she has to work till retirement.
      
  Algorithm:
    - Prompt the user for their age:
      - Get input and store as a local variable: age.
    - Prompt the user for the year of retirement:
      - Get input and store as a local variable: retirement.
    - Display:
      - Current Year
      - Retirement Year (Current Year + (Retirement Age - Current Age))
=end

def when_will_I_retire?()
  print 'What is your age?'
  current_age = gets.to_i
  
  print 'At what age would you like to retire?'
  retirement_age = gets.to_i
  
  current_year = Time.now.year
  work_years_to_go = retirement_age - current_age
  retirement_year = current_year + work_years_to_go
  
  puts "It's #{current_year}. You will retire in #{retirement_year}"
  puts "You have only #{work_years_to_go} year of work to go!"
end