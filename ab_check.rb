=begin
Have the function ABCheck(str) take the str parameter being passed and return 
the string true if the characters a and b are separated by exactly 3 places 
anywhere in the string at least once (ie. "lane borrowed" would result in true 
because there is exactly three characters between a and b). Otherwise return 
the string false.
=end


# Solution
def ABCheck(str)
  return "true" if str =~ /a(.)(.)(.)b|b(.)(.)(.)a/ else "false"         
end

# Solution
def ABCheck(str)
  str.downcase.chars.each_with_index{|c, i| return true if (c == "a" && str[i+4] == "b") || (c == "b" && str[i+4] == "a") }
  false
end