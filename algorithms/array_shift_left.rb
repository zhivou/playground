# Shifting whole array on a time left 123 -> 231 -> 312 etc..
# Remember:
# array.shift is take left item and deleting it at the same time it returns its value
# array.push(n) is adding a value at the end of the array and n - what value it should be!
# .join is adding string seportor to the intiger items
#.first returns first item from array
# Make sure when you create array you don't have [] or .new otherwise it will create 1 sized arrray with 
# 1..n in one item!

#1.0

# Input:
a = 12
b = 4
array = Array(1..a)
shift_array = Array(1..b)

# # Body:
# #1
# shift_array.each do |index|
#     moving_part = array.shift
#     array = array.push(moving_part)
# end
# #2
# shift_array.each do |index|
#     length = array.length
#     moving_part = array.first
#     array.delete_at(0)
#     array << moving_part
#     raise "Length incorrect!" if array.length != length
# end


#3 Indexes only
shift_array.each do |index|
    move_item = array[0]
    array.delete_at(0)
    array << move_item
end


# Output:
puts "Shift times: #{b}"
puts array.join(' ')