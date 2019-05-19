##
# String Compression: Implement a method to perform basic string compression using the counts
# of repeated characters. For example, the string aabcccccaaa would become a2blc5a3. If the
# "compressed" string would not become smaller than the original string, your method should return
# the original string. You can assume the string has only uppercase and lowercase letters (a - z).
# page 201
#

def compress(string)
  compressed_string = []
  count_consecutive = 0

  ##
  # Here is a simple counter: count_consecutiv will add 1 each time
  # next string letter is the same. If next array element is not the the same
  # will write letter and counter after the letter. Once it happened will set
  # counter back to 0.
  #
  for i in 0..string.length - 1
    count_consecutive +=1

    if i > string.length || string.chars[i] != string.chars[i+1]
      compressed_string << string.chars[i].to_s + count_consecutive.to_s
      count_consecutive = 0
    end
  end
  compressed_string.join
end

puts(compress("aassrejslrkjhlkejhfffwfeeeeewsnojkkjjfffffyy"))






























