lines = File.readlines('input1.txt')

with2 = 0
with3 = 0

lines.each do |line|
  tmp = line.chars.each_with_object(Hash.new(0)) { |char, hash| hash[char] += 1 }
  with2 += 1 if tmp.has_value? 2
  with3 += 1 if tmp.has_value? 3
end

p with2 * with3