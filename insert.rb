def insert_sort(array)
  for outer_index in 1..(array.length - 1)
    for inner_index in 0..(outer_index - 1)
      if array[inner_index] >= array[outer_index]
        array.insert(inner_index, array[outer_index])
        array.delete_at(outer_index + 1)
      end
    end
  end

  array
end

print insert_sort([6, 5, 3, 1, 8, 7, 2, 4])
