lines = File.readlines('input1.txt').map(&:strip)

lines.each_with_index do |line, index|
  lines[index + 1..-1].each do |other_line|
    zipped_array = line.chars.zip(other_line.chars)
    if 1 == zipped_array.count { |x,y| x != y }
      p zipped_array.reject { |x| x[0] != x[1] }.map(&:first).join('')
    end
  end
end