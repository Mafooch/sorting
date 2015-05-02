def selection_sort(to_sort)
  for index in 0..(to_sort.length - 2) #all except last since one-element list is already sorted
    # select the first element as the temporary minimum
    index_of_minimum = index

    # iterate over all other elements to find the minimum
    # this is what makes it O(n2) - quadrilateral not constant growth
    for inner_index in index..(to_sort.length - 1)
      if to_sort[inner_index] < to_sort[index_of_minimum]
        index_of_minimum = inner_index
      end
    end

    if index_of_minimum != index
      to_sort[index], to_sort[index_of_minimum] = to_sort[index_of_minimum], to_sort[index]
    end
  end

  to_sort
end

print selection_sort([9,2,8,0,3])
