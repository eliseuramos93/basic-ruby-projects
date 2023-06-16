def bubble_sort(array)
  number_iterations = array.size - 2
  array_is_sorted = false 

  until array_is_sorted
    swap_count = 0
    for i in 0..(number_iterations)
      if (array[i] > array[i+1])
        array[i], array[i+1] = array[i+1], array[i]
        swap_count += 1
      end 
    end 
    array_is_sorted = (swap_count == 0) # if no swaps were made, array is sorted
    number_iterations -= 1              # last value in array is sorted already
  end 

  return array
end 

data = [6, 8, 5, 9, 10, 7, 4, 3, 1, 2]
p bubble_sort(data)
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
p data.sort
# => [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]