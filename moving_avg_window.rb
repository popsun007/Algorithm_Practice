Given a stream of integers and a window size, calculate the moving average of all integers in the sliding window.

For example,
MovingAverage m = new MovingAverage(3);
m.next(1) = 1
m.next(10) = (1 + 10) / 2
m.next(3) = (1 + 10 + 3) / 3
m.next(5) = (10 + 3 + 5) / 3

class MovingAverage
=begin
    Initialize your data structure here.
    :type size: Integer
=end
    def initialize(size)
        @start_point = 0
        @slide = []
        @window_size = size 
    end


=begin
    :type val: Integer
    :rtype: Float
=end
    def next(val)
        @slide << val

        if @slide.size <= @window_size
            @start_point += 1
        else
            @slide.shift
        end
        
        sum = @slide.inject(0, :+)

        return sprintf('%.5f', sum.to_f / @start_point)
    end
end

