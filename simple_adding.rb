=begin
Have the function SimpleAdding(num) add up all the numbers from 1 to num. 
For the test cases, the parameter num will be any number from 1 to 1000. 
=end


# Solution
def SimpleAdding(num)
  # same as inject
  (1..num).to_a.reduce(:+)
end