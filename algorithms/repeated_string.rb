##
# https://www.hackerrank.com/challenges/repeated-string/problem?h_l=interview&playlist_slugs%5B%5D=interview-preparation-kit&playlist_slugs%5B%5D=warmup
#

string = 'aba'
count = 0
n = 10
full_count = n / string.length
remainder = n % string.length


string.chars.each do |letter|
  if letter == 'a'
    count +=1
  end
end
result = count * full_count

for i in 0..remainder
  result +=1 if string.chars[i] == 'a'
end

