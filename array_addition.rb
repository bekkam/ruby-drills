=begin
Have the function ArrayAddition(arr) take the array of numbers stored in arr 
and return the string true if any combination of numbers in the array can be 
added up to equal the largest number in the array, otherwise return the string 
alse. For example: if arr contains [4, 6, 23, 10, 1, 3] the output should return 
true because 4 + 6 + 10 + 3 = 23. The array will not be empty, will not contain 
all the same elements, and may contain negative numbers.
=end

def ArrayAddition(arr)
  largest = arr.sort!.pop
  numbers = arr
  combos = []
  
  idx = numbers.length
  while idx > 0
    combos << numbers.combination(idx).to_a.map!{|c| c.inject(:+)}
    idx -= 1
  end
  
  return true if combos.flatten.include?(largest)
  false
end
   

def ArrayAddition(arr)

  max = arr.delete(arr.max)
  i = arr.length
  while i > 0
    
  if arr.combination(i).map{|comb| comb.inject(:+)}.include? max
     return "true"
  end
    i-=1
  end
  return "false"
end