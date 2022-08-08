def merge_sort(arr, left_arr=[], right_arr=[], sorted_arr=[])
  return arr if arr.length < 2

  left_arr = merge_sort(arr.slice(...arr.length/2))
  right_arr = merge_sort(arr.slice(arr.length/2..))

  until left_arr.empty? || right_arr.empty?
    if left_arr[0] <= right_arr[0]
      sorted_arr << left_arr[0]
      left_arr.shift
    elsif
      sorted_arr << right_arr[0]
      right_arr.shift
    end
  end

  if left_arr.empty?
    right_arr.each { |element| sorted_arr << element }
  else
    left_arr.each { |element| sorted_arr << element }
  end

  sorted_arr
end

p merge_sort([2, 0, 3, 4, -5, 8, 16, -7, 15, 22, 2])