local hamming = {}

function hamming.compute(s1, s2)
    if #s1 ~= #s2 then return -1 end

    local total = 0
    for i=1,#s1 do
        if s1:byte(i) ~= s2:byte(i) then total = total + 1 end
    end
    return total
end

return hamming
