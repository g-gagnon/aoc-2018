lines = File.readlines('input1.txt')

fabric = Hash.new(0)
lines.each do |claim|
  start_x, start_y, width, height = claim.match(/.*@ (\d*),(\d*): (\d*)x(\d*)/)[1..4].map(&:to_i)

  start_x.upto(start_x + width - 1) do |x|
    start_y.upto(start_y + height - 1) do |y|
      fabric["#{x}x#{y}"] += 1
    end
  end
end
p fabric.keep_if { |_,v| v > 1 }.size