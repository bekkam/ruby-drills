=begin
Have the function WordCount(str) take the str string parameter being passed 
and return the number of words the string contains (ie. "Never eat shredded 
wheat" would return 4). Words will be separated by single spaces. 
=end

# Solution
def WordCount(str)
  str.split(" ").size          
end

# Alternatives
def WordCount(str)
  words = str.scan(/\S+/)
  words.count
end