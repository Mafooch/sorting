# quick sort at wors is O(n)2 in cases where with each iteration the pivot is
# either the largest or the smallest of the elements we're sorting. can avoid
# by selecting the pivot by looking for a median.
# uses divide and conquer
# out of place version is more comprehensible but consumes more memory

######################
#out of place version#
######################

def quick_sort(to_sort)
  # stop the recursion if nothing to sort. base case
  return to_sort if to_sort.length <= 1

  # pick the pivot (I pick the last element)
  pivot = to_sort.pop
  # partition operation
  smaller_array = []
  larger_array = []
  to_sort.each do |element|
    if element <= pivot
      smaller_array.push(element)
    else
      larger_array.push(element)
    end
  end

  # recursively sort the sub arrays and concatenate the results
  return quick_sort(smaller_array).push(pivot) + quick_sort(larger_array)
end

print quick_sort([3, 2, 1, 4])
