
def bsearch(arr, target)
    return nil if arr.length == 0
    
    mid = arr.length / 2
    if arr[mid] == target
        return mid
    elsif target < arr[mid] 
        subarr1 = arr[0...mid] # if target is on left size
        bsearch(subarr1, target)
    else
        subarr2 = arr[(mid + 1)..-1] # 
        new_mid = bsearch(subarr2, target)
        (arr.length - subarr2.length) + new_mid if new_mid != nil
    end

end




p bsearch([1, 2, 3], 1) # => 0
p bsearch([2, 3, 4, 5], 3) # => 1
p bsearch([2, 4, 6, 8, 10], 6) # => 2
p bsearch([1, 3, 4, 5, 9], 5) # => 3
p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil