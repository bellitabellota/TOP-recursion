def merge_sort(array)
  if array.length == 1
    array
  elsif array.length == 2 && array[0] > array[1]
    [array[1], array[0]]
  else
    array_left = array.slice(0..((array.length / 2) - 1))
    array_right = array.slice((array.length / 2)..-1)

    array_left = merge_sort(array_left)
    array_right = merge_sort(array_right)

    sorted_array = []

    until array_left[-1].nil? && array_right[-1].nil?
      if array_left[-1].nil?
        sorted_array.unshift(array_right.pop)
      elsif array_right[-1].nil?
        sorted_array.unshift(array_left.pop)
      elsif array_left[-1] > array_right[-1]
        sorted_array.unshift(array_left.pop)
      else
        sorted_array.unshift(array_right.pop)
      end
    end

    sorted_array
  end
end

p merge_sort([3, 2, 1, 13, 8, 5, 0, 1]) # expect [0, 1, 1, 2, 3, 5, 8, 13]
p merge_sort([105, 79, 100, 110]) # expect [79, 100, 105, 110]
