local factors = {
    { 3, 'Pling' },
    { 5, 'Plang' },
    { 7, 'Plong' }
}

function raindrops(n)
    local ret = ''
    for _, tbl in ipairs(factors) do
        local factor, noise = unpack(tbl)
        if n % factor == 0 then
            ret = ret .. noise
        end
    end

    if ret == '' then
        ret = tostring(n)
    end

    return ret
end

return raindrops
