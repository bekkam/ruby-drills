=begin
Have the function ExOh(str) take the str parameter being passed and return 
the string true if there is an equal number of x's and o's, otherwise return 
the string false. Only these two letters will be entered in the string, no 
punctuation or numbers. For example: if str is "xooxxxxooxo" then the output 
should return false because there are 6 x's and 5 o's.   
=end

# Solution
def ExOh(str)
  x_count, o_count = 0, 0 
  
  str.split("").each do |letter|
    letter === 'x' ? x_count += 1 : o_count += 1
  end

  x_count == o_count
end

# Solution
def ExOh(str)

  x_filter = lambda{|letter| return letter if letter == 'x'}
  o_filter = lambda{|letter| return letter if letter == 'o'}

  x = str.split("").find_all(&x_filter)
  o = str.split("").find_all(&o_filter)
  o.size == x.size 
end
   
# Solution
def ExOh(str)
  x, o = 0, 0
  str.chars{|char| (x += 1 if char == "x") or (o += 1 if char == "o") }
  x == o
end