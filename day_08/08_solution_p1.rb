#!/usr/bin/ruby
require_relative 'process_input.rb'

raw_input = ProcessInput.read_input("../08_test.txt")
input_by_line = ProcessInput.split_by_new_line(raw_input)

input_by_line.each do |line|
    input, output = line.split(" | ")
    puts output
end


