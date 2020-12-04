require "byebug"
class Stack
    def initialize
        @arr = Array.new
    end

    def push(el)
        @arr.push(el)
    end

    def pop
        @arr.pop
    end

    def peek
        @arr[-1]
    end
end

class Queue
    def initialize
        @arr = Array.new
    end

    def enqueue(el)
        @arr.unshift(el)
    end

    def dequeue
        @arr.shift
    end

    def peek
        @arr[0]
    end
end

class Map

    attr_reader :arr

    def initialize
        @arr = Array.new
    end
    
    def set(key, value)
        @arr.each_with_index do |pair,i|
            if pair[0] == key
                @arr[i] = [key, value]
                return @arr
            end
        end
        @arr.push([key, value])
        @arr
    end

    def get(key)
        @arr.each {|pair| return pair if pair[0] == key}
        arr
    end

    def delete(key)
        @arr.each_with_index do |pair, i|
            if pair[0] == key
                return @arr.delete(@arr[i])
            end
        end
    end

    def show
        @arr
    end

end

