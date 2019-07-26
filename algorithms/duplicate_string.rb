def duplicate(string)
  hash = {}
  result = {}
  string.chars.each do |element|
    hash[element] ||= 0
    hash[element] += 1
  end
  hash.each do |key, value|
    if value > 1
      result[key] = value
    end
  end
  result.inspect
end

puts duplicate("sdfjgnsjdd")

#
# O(n)
#