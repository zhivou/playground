

array = [

    [1,2,3,4],
    [5,6,7,8],
    [9,10,11,12]

]
hash = {}
counter = 0

array.each do |column|
  for i in 0..(column.length - 1)
    hash[i] ||= 0
    a = column[3+counter]
    unless column[3+counter].nil?
      hash[i] += column[0+counter] + column[1+counter] + column[2+counter]
      counter +=1
    end
  end
  counter = 0
end

p ''