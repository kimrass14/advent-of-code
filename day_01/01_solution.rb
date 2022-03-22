path = File.expand_path("../01_input.txt", __FILE__)
raw_input = File.read(path)
input = raw_input.split("\n").map(&:to_i)

previous_num = 0
count = -1
input.each do |num|
  count += 1 if num > previous_num
  previous_num = num
end
puts count

