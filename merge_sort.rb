
def merge_sort(list)
  # base case
  return list if list.length < 2
  half = list.length/2
  # sort the left half
  left = merge_sort(list[0..half-1]) # [1,5]
  # sort the right half
  right = merge_sort(list[half..-1]) # [2,10]

  # merge the two halves
  temp_list = [] # [1,2,5,10]
  until left.empty? || right.empty?
    temp_list << (left.first < right.first ? left.shift : right.shift)
  end
  temp_list + left + right
end

p merge_sort([1]) # => [1]
p merge_sort([32,2,41,9,1,0, 20]) # => 
