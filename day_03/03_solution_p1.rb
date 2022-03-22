#!/usr/bin/ruby
path = File.expand_path("../03_input.txt", __FILE__)
raw_input = File.read(path)
input = raw_input.split("\n")

length = input.first.length
totals_array = Array.new(length, 0)

input.each do |num|
  binaries = num.split("").map(&:to_i)
  binaries.each_with_index do |bit, i|
    totals_array[i] += bit
  end
end

half = input.count / 2
gamma  = ""
epsilon = ""

totals_array.each do |total|
    if total > half
        gamma << '1'
        epsilon << '0'
    else
        gamma << '0'
        epsilon << '1'
    end
end

gam_decimal = gamma.to_i(2)
eps_decimal = epsilon.to_i(2)
puts gam_decimal * eps_decimal