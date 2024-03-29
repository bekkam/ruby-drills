=begin 
Have the function NumberSearch(str) take the str parameter, search 
for all the numbers in the string, add them together, then return that 
final number. For example: if str is "88Hello 3World!" the output should be 91. 
You will have to differentiate between single digit numbers and multiple digit 
numbers like in the example above. So "55Hello" and "5Hello 5" should return 
two different answers. Each string will contain at least one letter or symbol.
=end

# Solution
def NumberAddition(str)

  numbers = str.scan(/\d+/) 
  result = 0 
  numbers.each do |n|
    result += n.to_i
  end
  result         
end

# Solution
def NumberAddition(str)
  str.scan(/\d+/).map(&:to_i).inject(0, :+)
end