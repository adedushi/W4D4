def my_min_phase_1(arr)
    arr.each do |ele| 
        if arr.all? { |num| ele <= num}
            return ele
        end
    end
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min_phase_1(list)

def my_min_phase_2(arr)
    smallest = arr[0]
    arr.each do |ele|
        if ele < smallest
            smallest = ele
        end
    end
    smallest
end

# list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
# p my_min_phase_2(list)

def subs_phase_1(arr)
    sub_nums = []
    (0...arr.length).each do |i|
        (i...arr.length).each do |j|
            sub_nums << arr[i..j]
        end
    end

    max = sub_nums[0].sum
    sub_nums.each do |ele|
        if ele.sum > max 
            max = ele.sum
        end
    end

    max
end

# list = [5, 3, -7]
# puts subs(list)

def subs_phase_2(arr)
    largest = arr[0]
    arr.each_with_index do |ele, i|
        current = arr[i..-1].sum
        if current > largest
            largest = current
        end
    end
    largest
end

list = [2, 3, -6, 7, -6, 7]
puts subs_phase_2(list)