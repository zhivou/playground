# https://leetcode.com/problems/palindrome-number/
#
# Determine whether an integer is a palindrome. An integer is a palindrome when it reads the same backward as forward.
#
# Example 1:
#
# Input: 121
# Output: true
# Example 2:
#
# Input: -121
# Output: false
# Explanation: From left to right, it reads -121. From right to left, it becomes 121-. Therefore it is not a palindrome.
# Example 3:
#
# Input: 10
# Output: false
# Explanation: Reads 01 from right to left. Therefore it is not a palindrome.
# Follow up:
#
# Coud you solve it without converting the integer to a string?
#

def is_palindrome(x)
  return false if x < 0 # -121 and 121- are not palindromes
  y = 0 # This will be a revered integer
  com = x # Copy of x to compare with

  while x > 0
    y = y * 10
    y = y + (x%10)
    x = x/10
  end

  if y == com
    true
  else
    false
  end

end

p is_palindrome(121)

#
# Here is the same approach to solve this as for reverse integer.
#