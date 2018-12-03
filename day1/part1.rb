input = File.read('input1.txt')

p input.each_line.map(&:to_i).reduce(&:+)