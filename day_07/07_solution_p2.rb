path = File.expand_path("../07_input.txt", __FILE__)
raw_input = File.read(path)
input = raw_input.split(",").map(&:to_i)

highest_position = input.max
# 1880

def total_fuel_calc(input, starting_position)
    total_fuel = 0
    input.each do |position|
        number_of_steps = (position - starting_position).abs
        consecutive_sum = (number_of_steps.to_f / 2) * (1 + number_of_steps)
        total_fuel += consecutive_sum
    end
    total_fuel
    puts "total_fuel #{total_fuel} at starting position #{starting_position}"
end

# SOLUTION A: brute force. inefficient. iterating through all 1,880 positions.
def best_starting_position(input, highest_position)
    least_fuel = 0
    best_starting_position = 0
    (1..highest_position).each do |index|
        fuel = total_fuel_calc(input, index)
        if fuel < least_fuel || least_fuel == 0
            least_fuel = fuel
            best_starting_position = index
        end
        # puts "fuel #{fuel} at starting position #{best_starting_position}"
    end
    puts "least fuel #{least_fuel} at starting position #{best_starting_position}"
end
# best_starting_position(input, highest_position)
# least fuel 97164301.0 at starting position 465

# SOLUTION B: find average which gets you close
def best_starting_position_avg(input)
    sum = input.reduce(0) { |sum, num| sum + num }
    average = sum.to_f / input.count
    avg_starting_position = average.round
    # avg_starting_position = 466
    total_fuel = total_fuel_calc(input, avg_starting_position)
    # avg_starting_position + - a position. compare if total fuel is more or less. stop when total_fuel is less.
end
best_starting_position_avg(input)


