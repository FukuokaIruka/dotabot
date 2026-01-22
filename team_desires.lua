
function UpdatePushLaneDesires()
	local bot = GetBot()
	
	if bot:GetLevel() < 5 then
		return { 0.0, 0.0, 0.0 }  -- Don't push any lane before level 5
	else
		return { 0.0, 0.5, 1.0 }  -- Original push desires
	end
end

function UpdateDefendLaneDesires()
	local bot = GetBot()
	local myTower = bot:GetNearbyTowers(1600, false)[1]  -- Get nearby ally tower
	
	if bot:GetLevel() < 5 and myTower ~= nil then
		return { 0.9, 0.9, 0.9 }  -- Stay near towers before level 5
	else
		return { 0.1, 0.2, 0.3 }  -- Original defend desires
	end
end

function UpdateFarmLaneDesires()

	return { 0.5, 0.6, 0.7 };

end

----------------------------------------------------------------------------------------------------

function UpdateRoamDesire()

	return { 0.5, GetTeamMember( 1 ) };

end

----------------------------------------------------------------------------------------------------

function UpdateRoshanDesire()

	return 0.8;

end

----------------------------------------------------------------------------------------------------
