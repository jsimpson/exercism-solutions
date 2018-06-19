local bob = {}

local string = string

local responses = {
    ["statement"] = "Whatever",
    ["question"] = "Sure",
    ["yelling"] = "Whoa, chill out!",
    ["empty"] = "Fine, be that way."
}

function string.ends(str, endswith)
    return endswith == '' or string.sub(str, -string.len(endswith)) == endswith
end

function bob.hey(str)
    if string.len(str) == 0 then
        return responses["empty"]
    elseif string.ends(str, "?") then
        return responses["question"]
    elseif str == string.upper(str) then
        return responses["yelling"]
    else
        return responses["statement"]
    end
end

return bob
