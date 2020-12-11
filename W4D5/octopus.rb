fish = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']

def sluggish(arr)
    longest = ''
    (0...arr.length-1).each do |i|
        (i+1...arr.length).each do |j|
            if arr[i].length > arr[j].length
                longest = arr[i]
            else
                longest = arr[j]
            end
        end
    end
    longest
end

# p sluggish(fish)

def dominant(arr)
    merge_sort(arr)[0]
end

def merge_sort(arr, &prc)
    prc ||= Proc.new {|a,b| b.length <=> a.length}

    return arr if arr.length < 2

    mid = (arr.length-1)/2

    left = merge_sort(arr[0..mid])
    right = merge_sort(arr[mid+1..-1])

    merge(left, right)
end

def merge(left, right, &prc)
    prc ||= Proc.new {|a,b| b.length <=> a.length}

    return [left] if right.empty?
    return [right] if left.empty?

    if prc.call(left[0], right[0]) == -1
        [left[0]] + merge(left[1..-1], right)
    else
        [right[0]] + merge(left, right[1..-1])
    end
end

# p dominant(fish)

def clever(arr)
    long_fish = ''
    arr.each {|el| long_fish = el if el.length > long_fish.length}
    long_fish

end

# p clever(fish)


#Dancing Octopus
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left",  "left-up" ]


def slow_dance(direction, tiles)
    tiles.index(direction)
end

# p slow_dance("up", tiles_array)
# p slow_dance("right-down", tiles_array)

new_tiles_data_structure = {'up' => 0, 'right-up' => 1, 'right' => 2, 'right-down' => 3, 'down' => 4, 'left-down' => 5, 'left' => 6, 'left-up' => 7}
def fast_dance(direction, tiles)
    tiles[direction]
end

# p fast_dance("up", new_tiles_data_structure)
# p fast_dance("right-down", new_tiles_data_structure)
