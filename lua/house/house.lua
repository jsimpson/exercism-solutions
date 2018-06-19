local house = {}

local verses = {
    {"the house that Jack built"},
    {"the malt", "lay in"},
    {"the rat", "ate"},
    {"the cat", "killed"},
    {"the dog", "worried"},
    {"the cow with the crumpled horn", "tossed"},
    {"the maiden all forlorn", "milked"},
    {"the man all tattered and torn", "kissed"},
    {"the priest all shaven and shorn", "married"},
    {"the rooster that crowed in the morn", "woke"},
    {"the farmer sowing his corn", "kept"},
    {"the horse and the hound and the horn", "belonged to"}
}

function combine(n)
    thing, action = unpack(verses[n])
    if action == nil then
        return thing
    else
        return string.format("%s\nthat %s %s", thing, action, combine(n - 1))
    end
end

function house.verse(n)
    return string.format("This is %s.", combine(n))
end

function house.recite()
    local str = ""
    for i, v in ipairs(verses) do
        str = str .. house.verse(i) .. "\n"
    end

    return string.gsub(str, "\n$", "")
end

return house
