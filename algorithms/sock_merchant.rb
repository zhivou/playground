#
# Data inputs
#
n = 10
ar = [1, 1, 3, 1, 2, 1, 3, 3, 3, 3]

done = false

#
# There is an array modifications during the program
# execution. Iterating through the array by comparing each i
# with next index(in the program variable ii). 'done' boolean is for
# checking if the array doesn't have pairs. Second delete command is
# important because if we delete an index it will shift the whole array
# to the left. Not the best implementation but possible to use in case
# we need original data modification.
#
until done
  done = true
  for i in 0..(ar.length - 1)
    ii = i + 1
    until ii > (ar.length - 1)
      if ar[i] == ar[ii]
        done = false
        unless ar[i].nil? || ar[ii].nil?
          ar.delete_at(i)
          ar.delete_at(ii - 1)
        end
      end
      ii +=1
    end
  end
end
