def timeInWords(h, m)
    hour_add = 0
    hours = { 1 => 'one',
              2 => 'two',
              3 => 'three',
              4 => 'four',
              5 => 'five',
              6 => 'six', 
              7 => 'seven',
              8 => 'eight',
              9 => 'nine',
              10 => 'ten',
              11 => 'eleven',
              12 => 'twelve' }
    
    minutes = { 0 => "o' clock",
              1 => "one minute past",
              10 => "ten minute past",
              15 => "quarter past",
              28 => "twenty eight minutes to",
              29 => "twenty nine minutes to",  
              30 => "half past",
              35 => "twenty five minutes to",  
              40 => "twenty minutes to",
              45 => "quarter to",
              47 => "thirteen minutes to",
              57 => "three minutes to" }
    
    minutes_arr = minutes.detect { |key,value| key == m }
    hours_arr = hours.detect { |key,value| if m > 30
                                            key == (h + 1)
                                           else
                                            key == h 
                                           end }
    case m
    when 0
        return result = "#{hours_arr[1]} #{minutes_arr[1]}"
    when 1..47
        return result = "#{minutes_arr[1]} #{hours_arr[1]}"
    when 47..60
        return result = "#{minutes_arr[1]} #{hours_arr[1]}"
    else
        print "Wrong path"
    end
end