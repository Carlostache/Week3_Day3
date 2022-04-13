
def exponential(num, exp)
    return 1 if exp == 0
    
    num * exponential(num, exp - 1)
end

def exponential_2(num, exp)
    return 1 if exp == 0
    return num if exp == 1

    if exp.even?
        exponential_2(num, exp / 2) ** 2
    else 
        num * (exponential_2(num, (exp - 1) / 2) ** 2)
    end

end

p exponential_2(2, 2)
