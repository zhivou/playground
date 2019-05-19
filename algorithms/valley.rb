path = 'DDUUDDUDUUUD'
path_ar = path.chop.scan(/\w/)
y = 0
counter = 0

#
# Main logic here is a boundary checking with if statemet of y == 0 and
# following step going down
#
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
