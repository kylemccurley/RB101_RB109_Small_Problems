=begin
Using the multiply method from the "Multiplying Two Numbers" problem, 
write a method that computes the square of its argument 
(the square is the result of multiplying a number by itself).
=end

=begin
  Input: - Integer
  Output: - Integer (Square of the input)
=end

def multiply(int1, int2)
  int1 * int2
end

def square(sqr1)
  multiply(sqr1, sqr1)
end

square(5) == 25
square(-8) == 64