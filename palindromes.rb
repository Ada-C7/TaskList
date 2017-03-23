#Palindromes recursively
def palindrome (string)

  f = 0
  l = string.length-1
  if f == l
    return 1
  end

  if string[f] == string[l]
    return palindrome(string[1...-1])
  else
    return false
  end

end

string = "narrran"
print palindrome(string)
