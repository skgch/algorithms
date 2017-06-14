nums = [8, 4, 3, 7, 6, 5, 2, 1]

def sort!(array, left, right)
  return if right - left <= 1
  i = left
  j = right
  mid = (i + j) / 2
  pivot = array[mid]

  loop do
    i += 1 while array[i] < pivot
    j -= 1 while array[j] > pivot
    break if i >= j
    array[i], array[j] = array[j], array[i]
    i += 1
    j -= 1
  end

  sort!(array, left, i - 1)
  sort!(array, i, right)
end

sort!(nums, 0, nums.length - 1)
p nums
