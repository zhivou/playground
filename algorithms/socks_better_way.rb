#
# Data inputs
#
n = 9
ar = [10, 20, 20, 10, 10, 30, 50, 10, 20]

n = 15
c = [6, 5, 2, 3, 5, 2, 2, 1, 1, 5, 1, 3, 3, 3, 5]

n = 10
ar = [1, 1, 3, 1, 2, 1, 3, 3, 3, 3]

#
# No array changes, only data modifications,
# mostly tried to avoid anything but 'for' usage. Didn't work fully:
# when creating a hash with key as a number of a color it will
# recognise it as an index which makes it really hard to use in regular
# 'for' statement but works just perfect in .each_with_index
#
matcher = {}
result = 0

#
# Iterating through the array and gathering pairs
# in a hash. Key is a color number, value is a sum of socks
#
for socks in 0..(n - 1)
    if matcher[ar[socks]]
      matcher[ar[socks]] +=1
    else
      matcher[ar[socks]] = 1
    end
  socks +=1
end

#
# Getting sum of colors which has module = 0 and dividing by 2
# to get 1 pair
#
matcher.each_with_index do |(key, value)|
    result += value / 2.0
end
