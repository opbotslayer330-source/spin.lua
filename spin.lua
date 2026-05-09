local Spin = {}

local rewards = {
    {name = "Common Fruit", chance = 70},
    {name = "Rare Fruit", chance = 20},
    {name = "Legendary Fruit", chance = 8},
    {name = "Mythical Fruit", chance = 2
0.1}
}

function Spin.Roll(player)
    local luck = 1

    if player:FindFirstChild("leaderstats") then
        local stat = player.leaderstats:FindFirstChild("Luck")

        if stat then
            luck = stat.Value
        end
    end

    local roll = math.random(1, 100)
    roll = roll / luck

    if roll <= 2 then
        return rewards[4].name

    elseif roll <= 10 then
        return rewards[3].name

    elseif roll <= 30 then
        return rewards[2].name

    else
        return rewards[1].name
    end
end

return Spin
