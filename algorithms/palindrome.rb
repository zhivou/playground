##
# Write a function that returns true if a word is a palindrome, or false if it’s not.
#

def palindrome?(string)
  i1 = 0
  i2 = string.length - 1

  while i1 < i2
    if string[i1] != string[i2]
      return false
    end
     i1 +=1
     i2 -=1
  end
  true
end

p palindrome?('a')