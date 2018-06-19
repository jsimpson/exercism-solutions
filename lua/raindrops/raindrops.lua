return function (n)
    local factors = {
        { 3, 'Pling' },
        { 5, 'Plang' },
        { 7, 'Plong' }
    }

    local ret = ''
    for _, tbl in ipairs(factors) do
        local factor, noise = unpack(tbl)
        if n % factor == 0 then ret = ret .. noise end
    end
    return ret ~= '' and ret or tostring(n)
end
