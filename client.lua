local interval = 30 -- in minutes
local tips = {
    {value1 = "Join our ~g~Discord", value2 = ""},
    {value1 = "Need admin?", value2 = "~y~/report"}
}
Citizen.CreateThread(function()
    while true do
        local rand = math.random(1,getTableSize(tips))
        ESX.ShowAdvancedNotification('RANDOM TIP', tips[rand].value1,tips[rand].value2, "CHAR_DEFAULT", 8)
        Citizen.Wait(interval*1000*60)
    end
end)
function getTableSize(t)
    local count = 0
    for _, __ in pairs(t) do
        count = count + 1
    end
    return count
end
