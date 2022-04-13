
def merge_sort(arr)
    return arr if arr.length == 0
    return arr if arr.length == 1
    
    mid = arr.length / 2
    arr1 = arr[0...mid]
    arr2 = arr[mid..-1]

    sorted1 = merge_sort(arr1)
    sorted2 = merge_sort(arr2)

    merged = merge(sorted1, sorted2)

   
end

def merge(arr1, arr2)
    merged_array = []
    while arr1.empty? == false && arr2.empty? == false
        if arr1[0] <= arr2[0]
            merged_array << arr1.shift
        else
            merged_array << arr2.shift
        end
    end
    merged_array + arr1 + arr2
end

p merge_sort([1, 5, 2, 22, 13, 7, 5])