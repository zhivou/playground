##
# Write a program to reverse a string?
#

def reverse_string(string)
  new_string = []
  i = 0

  while i < string.length
    new_string << string.chars[(string.length - 1) - i]
    i +=1
  end
  print(new_string.join)
end

reverse_string('abvgdzh')