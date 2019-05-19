# There are two arrays, get smallest sum of two. You can'r use same index.

a = [2,23,14,5,1,34]
b = [2,11,56,21,1,119]
sum = Array.new

def height_to_low(array)
  done = false
  temp_holder = 0
  until done
    done = true
    for i in 0..(array.length - 2)  # this is just always 2 step less then a array size. Note that < is not including the last number
      if array[i] < array[i+1]
        temp_holder = array[i+1]
        array[i+1] = array[i]
        array[i] = temp_holder
        done = false
      end
      i +=1
    end
  end
  array
end

sorted_a = height_to_low(a)
sorted_b = height_to_low(b)

