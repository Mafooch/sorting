def bubble_sort(array)
  sorted = false

  until sorted
    sorted = true

    for index in 0..(array.length - 2)
      if array[index] > array[index + 1]
        sorted = false
        array[index], array[index + 1] = array[index + 1], array[index]
      end
    end
  end

  array
end

print bubble_sort([6, 5, 3, 1, 8, 7, 2, 4])
