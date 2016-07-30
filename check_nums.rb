=begin
rescue Have the function CheckNums(num1,num2) take both parameters being 
passed and return the string true if num2 is greater than num1, otherwise 
return the string false. If the parameter values are equal to each other 
then return the string -1.
=end


# Solution
def CheckNums(num1,num2)
  return "-1" if num1 == num2 
  return "true" if num2 > num1 else "false"
end

# Solution
def CheckNums(num1,num2)
  return (num2 > num1).to_s unless num2 == num1
  return -1    
end