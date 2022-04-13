
def my_range(first, last)
    return [] if last <= first
    prev_arr = [first]
    
    prev_arr + my_range(first + 1, last)
end

def sum_iterative(arr)
    sum = 0
    arr.each do |num|
        sum += num
    end
    sum
end

def sum_recursive(arr)
    return 0 if arr == []
    sum = 0
    sum += arr.pop
    sum += sum_recursive(arr)
end


