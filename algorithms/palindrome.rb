##
# Write a function that returns true if a word is a palindrome, or false if it’s not.
#


##
# V1.0
# First try - doesn't work with even strings but it is still
# can be palindrom
#
# def palindrome?(string)
#   ##
#   # Palindrome should be only odd otherwise we can return false right away
#   # Also 1 character is always Palindrome we can return true right away
#   #
#   return false if string.length % 2 == 0
#   return true if string.length == 1
#
#   revers = string.chars
#
#   for i in 0..string.length / 2 do
#     before = revers[i]
#     revers[i] = revers[string.length - i - 1]
#     revers[string.length - i -1] = before
#   end
#
#   if string.chars == revers
#     true
#   else
#     false
#   end
# end


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