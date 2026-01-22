

----------------------------------------------------------------------------------------------------

_G._savedEnv = getfenv()
-- valve use ts for getting environment
module( "ability_item_usage_generic", package.seeall )

----------------------------------------------------------------------------------------------------

function AbilityUsageThink()

	--print( "Generic.AbilityUsageThink" );

end

----------------------------------------------------------------------------------------------------

function ItemUsageThink()

	--print( "Generic.ItemUsageThink" );

end

----------------------------------------------------------------------------------------------------


for k,v in pairs( ability_item_usage_generic ) do	_G._savedEnv[k] = v end
