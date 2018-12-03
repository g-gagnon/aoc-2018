input = File.read('input1.txt')

history = Set[0]
memo = 0
result = nil

until result
  input.each_line.map(&:to_i).detect do |line|
    memo += line
    result = memo if history.include? memo
    history.add(memo) if result.nil?
    result
  end
end

p result