path = File.expand_path("../07_input.txt", __FILE__)
raw_input = File.read(path)
input = raw_input.split(",").map(&:to_i)

def median(input)
    sorted = input.sort
    length = sorted.length
    median = (sorted[(length - 1) / 2] + sorted[length / 2]) / 2.0
    median
end
starting_position = median(input)

total_fuel = input.reduce(0) do |output_count, position|
    difference = (position - starting_position).abs
    output_count + difference
end
puts(total_fuel)