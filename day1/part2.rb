input = File.read('input1.txt')

history = {0 => true}
memo = 0
result = nil

until result
  input.each_line.map(&:to_i).detect do |line|
    memo += line
    result = memo if history.has_key? memo
    history[memo] = true if result.nil?
    result
  end
end

p result