=begin
Have the function StringScramble(str1,str2) take both parameters being passed 
and return the string true if a portion of str1 characters can be rearranged 
to match str2, otherwise return the string false. For example: if str1 is 
"rkqodlw" and str2 is "world" the output should return true. Punctuation and 
symbols will not be entered with the parameters.  
=end

# Solution
def StringScramble(str1,str2)

  s1 = str1.downcase.scan(/[a-z]+/).join 
  s2 = str2.downcase.scan(/[a-z]+/).join 
  
  s2.chars.each do |l|
    if s1.include?(l)
      next
    else 
      return false
    end
  end
  true   
end


# Solution
def StringScramble(str1,str2)
  str2.chars{|c| return false if str1.count(c) < str2.count(c) }
  true
end


# Solution
def StringScramble(str1,str2)
  arr1 = str1.split("")
  arr2 = str2.split("")
  
  if arr2 - arr1 == []
    return true
  end
  
  false
end

# Solution
def StringScramble(str1,str2)

  str1 = str1.split("").sort
  str2 = str2.split("").sort

  ans1 = (str2 - str1)
  ans2 = (str1 - str2)

  puts "#{ans1} #{ans2}"

  return "true" if ans1 == [] || ans2 == []
  "false"

end