t = gets.strip.to_i

for index1 in 1..t do
  input = []
  n = gets.strip.to_i
  for index2 in 1..n do
    input.push(gets.strip)
  end

  hash_front = []
  hash_back = []
  for index3 in 1..26 do
    hash_front[index3 - 1] = 0
    hash_back[index3 - 1] = 0
  end

  input.each do |element|
    hash_front[element[0].ord - 97] += 1
    hash_back[element[-1].ord - 97] += 1
  end

  for index4 in 0..25 do
    hash_front[index4] = (hash_front[index4] -  hash_back[index4]).abs
  end

  sum = 0
  hash_front.each do |element|
    sum += element
  end

  if sum == 2
    puts "Ordering is possible."
  else
    puts "The door cannot be opened."
  end
end
