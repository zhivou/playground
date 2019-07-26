##
# Write a function that determines whether a character has been removed from a String.
# not solved!!!!

def was_removed?(first_str, second_str)
  if first_str == second_str
    puts "Strings are identical"
    return
  end

  hash = {}

  first_str.chars.each do |element|
    hash[element] ||= 0
    hash[element] += 1
  end

  second_str.chars.each do |element|
    if hash[element]
      if hash[element] > 0
        hash[element] -= 1
      else
        hash[element] += 1
      end
    else
      hash[element] ||= 0
      hash[element] += 1
    end
  end

  puts hash.inspect
end

was_removed?('aaad', 'aaadztz')