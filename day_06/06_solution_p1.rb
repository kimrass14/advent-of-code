path = File.expand_path("../06_test.txt", __FILE__)
raw_input = File.read(path)
input = raw_input.split(",").map(&:to_i)

def daily_state(lanternfish_timers)
    80.times do |index|
        new_day = []
        lanternfish_timers.each do |num|
            if num == 0
                updated_num = 6
                new_day << updated_num
                new_day << 8
            else
                updated_num = num - 1
                new_day << updated_num
            end 
        end

        lanternfish_timers = new_day
        puts new_day.count if index == 79
    end
end

daily_state(input)




