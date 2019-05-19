path = 'DDUUDDUDUUUD'
path_ar = path.chop.scan(/\w/)
y = 0
counter = 0

for step in 0..(path_ar.length - 2)
  if y == 0 && path_ar[step] == 'D'
    counter +=1
  end
  if path_ar[step] == 'U'
    y +=1
  else
    y -=1
  end
end




def test_name_example_planXXXX
  repeat_test(5) do
    do_something
    do_it_again
    asssert
  end
end