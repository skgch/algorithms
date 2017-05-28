inputs = gets.chomp.split(',')
nums = []
inputs.each do |input|
  nums.push(input.to_i)
end
n = nums.length

flag = true
x = 0
while flag
  flag = false
  0.upto(n - 2 - x) do |i|
    if nums[i] > nums[i + 1]
      nums[i], nums[i + 1] = nums[i + 1], nums[i]
      flag = true
      p nums
    end
  end
  x += 1
end
