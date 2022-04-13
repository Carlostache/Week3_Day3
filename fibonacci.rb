
def fib_iter(n)
    return 0 if n == 0
    return 1 if n == 1
    fib_arr = [0, 1]

    while fib_arr.length < n
        (2..n).each do |i|
            fib_arr << fib_arr[i -1] + fib_arr[i -2]
        end
    end
    fib_arr[-1]

end

def fib_recursive(n)
    return 0 if n == 0
    return 1 if n == 1

    nth_fib = fib_recursive(n - 1) + fib_recursive(n - 2) 
end


p fib_iter(2)
p fib_iter(1)
p fib_recursive(5)
p fib_recursive(7)
p fib_recursive(3)
