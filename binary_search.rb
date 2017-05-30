# inputs should be ordered by ASC
inputs = gets.chomp.split(',')
search = gets.to_i

nums = []
inputs.each do |input|
  nums.push(input.to_i)
end

nums.length

left = 0
right = nums.length - 1
mid = (left + right) / 2

flag = true
while flag
  if nums[mid] == search
    flag = false
    break
  elsif nums[mid] < search
    left = mid + 1
    break if right < left
  else
    right = mid - 1
    break if right < left
  end
  mid = (left + right) / 2
end

if flag
  puts 'Not Found'
else
  puts mid
end
