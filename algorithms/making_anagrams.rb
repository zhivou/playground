#
# This is an exercise to count all characters which needs to be deleted
# no need to show which one. For example ya ra -> needs to delete 2 chars in order
# to make it anagram strings 'a' and 'a', 'y' and 'r' needs to be deleted
#

a = "asdf"
b = "sdfaa"

##
# Hashing will keep count of characters(dictionary) we need to delete/add from strings in order to make it
# anagrams. First will collect all chars from first string and count : a => 1 b => 2 etc...
# compare with second sting and if there is a match delete one from hash, if no matching or == 0 counting
# as delete candidate.
#
hashing = {}
count = 0

a.chars.each do |first|
  ##
  # If there is no hashing[first] it needs to be set to 0 otherwise it won't add 1 below -
  # "||= means set to 0 if hashing[first] is nil or false"
  # If always setting it to 0 it will never count it because it will be setting it to 0 each time
  hashing[first] ||= 0
  hashing[first] +=1
end

##
# First compare hash on having [second] string in there. If so we need to subtract 1 from hashing counter
# until it is == 0. It will help to count only matching pairs.
# If it's already 0 it means there is more characters in second string then it needs to so adding that to counter
# for further deletion.
# And the last is to count a char which wasn't fount in hash it means we need also delete it
# so count +=1
#
b.chars.each do |second|
  if hashing[second]
    if hashing[second] > 0
      hashing[second]  -=1
    else
      count +=1
    end
  else
    count +=1
  end
end

##
# Calculating a count of characters needs to be deleted form a string in order
# to make 2 string be an anagram:
#
hashing.each do |num,value|
  count = value + count
end
print(count)