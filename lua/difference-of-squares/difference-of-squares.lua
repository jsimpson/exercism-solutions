local diff = {}

function diff.square_of_sums(n)
    total = 0
    for i=1, n do
        total = total + i
    end
    return total^2
end

function diff.sum_of_squares(n)
    total = 0
    for i=1, n do
        total = total + i^2
    end
    return total
end

function diff.difference_of_squares(n)
    return diff.square_of_sums(n) - diff.sum_of_squares(n)
end

return diff
