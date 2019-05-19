##
# Write a function that determines whether a character has been removed from a String.
# not solved!!!!

def was_removed?(first_str, second_str)
  if first_str == second_str
    return "Strings are identical"
  end

  dictionary_1 = {}
  dictionary_2 = {}
  missing_letter = {}


  first_str.chars.each do |letter|
    dictionary_1[letter] ||= 0
    dictionary_1[letter] +=1
  end

  second_str.chars.each do |letter|
    dictionary_2[letter] ||= 0
    dictionary_2[letter] +=1
  end

  dictionary_1.each do |key, value|
    if dictionary_2.include?(key)
      a = dictionary_2[key]
      c = value
      unless dictionary_2[key] == value
        missing_letter[key] ||= 0
        missing_letter[key] +=1
      end
    else
      missing_letter[key] ||= 0
      missing_letter[key] +=1
    end
  end

  print(missing_letter.inspect)
end

was_removed?('sssaj', 'ssadd')