##
# Needs to consider spaces ect...
#

require 'json'
require 'stringio'


def googleme
  string = 'g o o g l e'

  string = string.strip
  dictionary = {
      :g => ['g','G'],
      :o => ['o', '0', 'O', '(', ')', '[', ']', '<', '>'],
      :l => ['l', 'L', 'I'],
      :e => ['e', 'E', '3'],
      :special => ['(', ')', '[', ']', '<', '>']
  }

  special = 0
  count = 0

  dictionary.each do |key,value|
    if key == string[count]
      if string[count].include?(value.each { |letter| letter })
        count +=1
        special +=1 if string[count].include?( dictionary[:special].each { |letter| letter })
      else
        return 'False'
      end
    end
  end
  if special == 1 || special == 2 && string.length > 6
    'False'
  else
    'True'
  end
end

puts(googleme)