local anagram = {}

function anagram:new(word)
    return setmetatable({word = word}, {__index = self})
end

function anagram:match(words)
    --[[
        google seems to suggest sorting the string by putting each
        character in to a table ala an array and running table.sort
        on the table
        is there really no better way?
    ]]--

    local sort = function(word)
        local sorted = {}
        for i = 1, #word do
            sorted[i] = string.sub(word, i, i)
        end
        table.sort(sorted)
        return table.concat(sorted, '')
    end

    local hits = {}
    for _, word in pairs(words) do
        if #word == #self.word then
            if string.lower(word) == string.lower(self.word) then
                table.insert(hits, word)
            elseif sort(string.lower(word)) == sort(string.lower(self.word)) then
                table.insert(hits, word)
            end
        end
    end
    return hits
end

return anagram
