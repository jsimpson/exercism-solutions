local vlq = {}

local encode_one = function(n)
    local bytes = {}

    local byte = n & 0x7f
    table.insert(bytes, 1, byte)

    n = n >> 7

    while n > 0 do
        byte = n & 0x7f | 0x80
        table.insert(bytes, 1, byte)
        n = n >> 7
    end

    return bytes
end

function vlq.encode(integers)
    local bytes = {}
    for _, integer in ipairs(integers) do
        for _, byte in ipairs(encode_one(integer)) do
            table.insert(bytes, byte)
        end
    end
    return bytes
end

function vlq.decode(bytes)
    local results = {}
    local n = 0

    for i, byte in ipairs(bytes) do
        n = n << 7
        n = n | (byte & 0x7f)

        if byte & 0x80 == 0 then
            table.insert(results, n)
            n = 0
        end
        assert((i ~= #bytes) or (byte & 0x80 == 0), "incomplete byte sequence")
    end

    return results
end

return vlq
