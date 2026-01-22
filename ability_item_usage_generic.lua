

----------------------------------------------------------------------------------------------------

_G._savedEnv = getfenv()
-- valve use ts for getting environment
module( "ability_item_usage_generic", package.seeall )

----------------------------------------------------------------------------------------------------

function AbilityUsageThink()
    local bot = GetBot()

    if bot:GetLevel() <= 4 then
        local enemyTowers = bot:GetNearbyTowers(1000, true)

        if #enemyTowers > 0 then
            local tower = enemyTowers[1]

            -- Only retreat if tower is attacking us or we are in range
            if GetUnitToUnitDistance(bot, tower) < 900 then
                local retreatLoc = bot:GetLocation() +
                    (bot:GetLocation() - tower:GetLocation()):Normalized() * 400

                bot:Action_MoveToLocation(retreatLoc)
                return
            end
        end
    end
end

----------------------------------------------------------------------------------------------------

function ItemUsageThink()

	--print( "Generic.ItemUsageThink" );

end

----------------------------------------------------------------------------------------------------


for k,v in pairs( ability_item_usage_generic ) do	_G._savedEnv[k] = v end
