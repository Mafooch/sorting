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

def bubble_sort(ary)
  sorted = false
  until sorted
    sorted = true
    for index in 0..(ary.length - 2)
      if ary[index] > ary[index + 1]
        ary[index], ary[index + 1] = ary[index + 1], ary[index]
        sorted = false
      end
    end
  end

  ary
end


print bubble_sort([6, 5, 3, 1, 8, 7, 2, 4])
