#!/usr/bin/ruby

class ProcessInput
    def self.read_input(file)
        path = File.expand_path(file, __FILE__)
        raw_input = File.read(path)
    end

    def self.split_by_new_line(raw_input)
        input = raw_input.split("\n")
    end
end