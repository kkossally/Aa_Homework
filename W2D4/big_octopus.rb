require 'byebug'

fish = [ 1, 2, 3, 4, 5 ]

def sluggish_octopus(arr)
    longest_fish = arr.first

    arr.each do |fish1|
        arr.each do |fish2|
            longest_fish = fish2 > fish1 ? fish2 : fish1
        end
    end

    longest_fish
end

puts sluggish_octopus(fish) # => "fiiiissshhhhhh"



def dominant_octopus(arr)
    return arr if arr.count < 2

    mid_idx = arr.length / 2
    
    left = arr[0...mid_idx]
    right = arr[mid_idx..-1]
    
    sorted_left = dominant_octopus(left)
    sorted_right = dominant_octopus(right)
    sorted = dominant_octopus_helper(sorted_left, sorted_right)
    
    sorted.last
end

def dominant_octopus_helper(left, right)
    sorted = []
    
    until left.empty? || right.empty?
        if left.first <= right.first
            sorted << left.shift
        else
            sorted << right.shift
        end
    end
    sorted += left + right
end

puts dominant_octopus(fish) # => "fiiiissshhhhhh"



def clever_octopus(arr)
    longest_fish = arr.first

    arr.each { |fish| longest_fish = fish if fish.length > longest_fish.length }

    longest_fish
end

puts clever_octopus(fish) # => "fiiiissshhhhhh"




tiles_array = [ "up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]

def slow_dance(dir, arr)
    arr.each_with_index { |tile, idx| return idx if tile == dir }
end

puts slow_dance("up", tiles_array) # => 0
puts slow_dance("right-down", tiles_array) # => 3



tiles_hash = { up: 0, right_up: 1, right: 2, right_down: 3, down: 4, left_down: 5, left: 6,  left_up: 7 }

def constant_dance(dir, hash)
    hash[dir]
end

puts constant_dance(:up, tiles_hash) # => 0
puts constant_dance(:right_down, tiles_hash) # => 3