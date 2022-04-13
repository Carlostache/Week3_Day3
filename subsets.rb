
def subsets(arr)
    return [] if arr == []
    
    subsets = []
    subarr = []

    arr.each do |ele|
        subarr << ele
    end
    arr.shift 
    subsets.push(subsets(arr)) + subarr
end




p subsets([]) # => [[]]
p subsets([1]) # => [[], [1]]
p subsets([1, 2]) # => [[], [1], [2], [1, 2]]
p subsets([1, 2, 3])
# => [[], [1], [2], [1, 2], [3], [1, 3], [2, 3], [1, 2, 3]]