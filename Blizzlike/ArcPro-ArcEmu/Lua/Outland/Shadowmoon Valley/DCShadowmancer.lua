--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: WoTD Team; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function DCShadowmancer_OnEnterCombat(Unit,Event)
	Unit:RegisterEvent("DCShadowmancer_ShadowBolt", 13000, 0)
	Unit:RegisterEvent("DCShadowmancer_DarkMending", 25000, 0)
end

function DCShadowmancer_ShadowBolt(Unit,Event)
	Unit:FullCastSpelOnTarget(9613, Unit:GetClosestPlayer())
end

function DCShadowmancer_DarkMending(Unit,Event)
	Unit:FullCastSpelOnTarget(16588, Unit:GetRandomFriend())
end

function DCShadowmancer_Died(Unit,Event)
	Unit:RemoveEvents()
end

function DCShadowmancer_LeaveCombat(Unit,Event)
	Unit:RemoveEvents()
end

RegisterUnitEvent(21384, 1, "DCShadowmancer_OnEnterCombat")
RegisterUnitEvent(21384, 4, "DCShadowmancer_Died")
RegisterUnitEvent(21384, 2, "DCShadowmancer_LeaveCombat")