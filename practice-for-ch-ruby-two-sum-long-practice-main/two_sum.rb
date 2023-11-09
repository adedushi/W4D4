def bad_two_sum?(arr, target_sum)

    i = 0
    while i < arr.length
        ele_1 = arr[i]

        j = i + 1
        while j < arr.length
            ele_2 = arr[j]

            if ele_1 + ele_2 == target_sum
                return true 
            end

            j += 1
        end

        i += 1
    end

    false
end




# def okay_two_sum?(arr, target_sum)
#     return true if arr.sum == target_sum
#     return false if arr.length <= 1
#     sorted = arr.sort
#     mid = sorted.length / 2

#     left = arr[0...mid]
#     right = arr[mid..-1]

#     if target_sum < arr[mid]
#         okay_two_sum?(left, target_sum)   
#     else
#         okay_two_sum?(right, target_sum)
#     end

# end


def decent_two_sum(arr, target)
    sorted = arr.sort

    sorted.each_with_index do |ele, i|
        result = bsearch(arr, target - ele, i + 1, arr.length)
        return true if result != nil
    end

    false

end


def bsearch(nums, target, start = 0, finish = nums.length)
    return nil if start == finish
  
    mid = (finish - start) / 2 + start 
    case target <=> nums[mid]
    when -1
      bsearch(nums, target, start, mid)
    when 0
      mid
    when 1
      bsearch(nums, target, mid + 1, finish)
    end
end



def hash_map_way(arr, target)
    my_hash = Hash.new(0)

    arr.each do |ele|
        my_hash[ele] += 1
        result = my_hash[target - ele]
        return true if result != nil
    end

    false
end

arr = [0, 1, 5, 7, 9, 10 , 11]

p hash_map_way(arr, 8)


