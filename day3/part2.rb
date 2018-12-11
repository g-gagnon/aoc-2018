lines = File.readlines('input1.txt')
result = Set.new
fabric = Hash.new()
lines.each do |claim|
  claim_id, start_x, start_y, width, height = claim.match(/#(\d*) @ (\d*),(\d*): (\d*)x(\d*)/)[1..5].map(&:to_i)

  result << claim_id

  start_x.upto(start_x + width - 1) do |x|
    start_y.upto(start_y + height - 1) do |y|
      fabric["#{x}x#{y}"] = [] if fabric["#{x}x#{y}"].nil?
      fabric["#{x}x#{y}"] << claim_id
      fabric["#{x}x#{y}"].each { |i| result.delete(i) } if fabric["#{x}x#{y}"].size > 1
    end
  end
end

p result.first