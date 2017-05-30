# inputs should be ordered by ASC
inputs = gets.chomp.split(',')
search = gets.to_i

nums = []
inputs.each do |input|
  nums.push(input.to_i)
end

nums.length

left = 0
mid = 0
right = nums.length - 1

flag = false
while left <= right
  mid = (left + right) / 2
  if nums[mid] == search
    flag = true
    break
  elsif nums[mid] < search
    left = mid + 1
  else
    right = mid - 1
  end
end

if flag
  puts mid
else
  puts 'Not Found'
end
