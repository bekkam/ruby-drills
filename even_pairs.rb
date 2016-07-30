=begin
Have the function EvenPairs(str) take the str parameter being passed and 
determine if a pair of adjacent even numbers exists anywhere in the string. 
If a pair exists, return the string true, otherwise return false. For example: 
if str is "f178svg3k19k46" then there are two even numbers at the end of the 
string, "46" so your program should return the string true. Another example: 
if str is "7r5gg812" then the pair is "812" (8 and 12) so your program should 
return the string true. 
=end


def EvenPairs(str)
  nums = str.scan(/\d+/).find_all{|n| n.length > 1}
  return true if nums.map(&:to_i).find{|n| n % 2 == 0} else false    
end