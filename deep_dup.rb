
def deep_dup(arr)
    return [] if arr == []
    dup_array = []
    arr.each do |ele|
        if ele.is_a?(Array) == true
            sub_array = deep_dup(ele)
            dup_array << sub_array
        else 
            dup_array << arr.shift
        end
    end
    dup_array
end

p deep_dup([1, [2], [3, [4]]])

