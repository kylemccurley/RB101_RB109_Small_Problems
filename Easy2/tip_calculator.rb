=begin
Create a simple tip calculator. 
The program should prompt for a bill amount and a tip rate. 
The program must compute the tip and then display both the tip and the total amount of the bill.
=end

=begin
  Input: N/A (No Arguments)
  Output: - Printing the tip and total amount of the bill

  Rules/Requirements:
    - The program should prompt for:
      - A bill amount
      - Tip Rate
    - Compute the tip
    - Display
      - Tip
      - Total amount of the bill

  Data Structure:
    - Floats
    - Strings

  Algorithm:
    - Prompt the user to input bill amount
    - Prompt the user to input the tip rate
    - Calculate the tip (bill amount * tip_rate)
    - Print:
      - Tip
      - Bill (bill_amount + tip)
=end

def tip_calculator()
  print 'What is the bill? '
  bill = gets.chomp
  bill = bill.to_f

  print 'What is the tip percentage? '
  percentage = gets.chomp
  percentage = percentage.to_f

  tip   = (bill * (percentage / 100)).round(2)
  total = (bill + tip).round(2)

  puts "The tip is $#{tip}"
  puts "The total is $#{total}"
end

tip_calculator()