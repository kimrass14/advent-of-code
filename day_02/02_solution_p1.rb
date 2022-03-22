path = File.expand_path("../02_input.txt", __FILE__)
raw_input = File.read(path)
input = raw_input.split("\n")

horizontal = 0
depth = 0

input.each do |command|
    cmd = command.split(" ")
    direction = cmd[0]
    units = cmd[1].to_i

    if direction == "forward"
        horizontal += units
    elsif direction == "up"
        depth -= units
    else
        depth += units
    end
end
puts horizontal * depth