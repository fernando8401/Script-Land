--[[ WoTD License - 
This software is provided as free and open source by the
team of The WoTD Team. This script was written and is
protected by the GPL v2. Please give credit where credit
is due, if modifying, redistributing and/or using this 
software. Thank you.
Thank: Hellgawd; for the Script
~~End of License... Please Stand By...
-- WoTD Team, Janurary 19, 2010. ]]

function Boglash_OnKill(pUnit,Event)
	pUnit:RemoveEvents();
end

function Boglash_EnterCombat(pUnit,Event)
	pUnit:RegisterEvent("hittest_1", 1000, 0)
end

function hittest_1(pUnit, Event)
	if(pUnit:GetHealthPct() < 90) then
		pUnit:RemoveEvents();
		pUnit:FullCastSpellOnTarget(35493, pUnit:GetClosestPlayer())
		pUnit:RegisterEvent("hittest_2", 1000, 0)
	end
end

function hittest_2(pUnit, Event)
	if(pUnit:GetHealthPct() < 75) then
		pUnit:RemoveEvents();
		pUnit:FullCastSpellOnTarget(35493, pUnit:GetClosestPlayer())
		pUnit:RegisterEvent("hittest_3", 1000, 0)
	end
end

function hittest_3(pUnit, Event)
	if(pUnit:GetHealthPct() < 45) then
		pUnit:RemoveEvents();
		pUnit:FullCastSpellOnTarget(35493, pUnit:GetClosestPlayer())
		pUnit:RegisterEvent("hittest_4", 1000, 0)
	end
end

function hittest_4(pUnit, Event)
	if(pUnit:GetHealthPct() < 15) then
		pUnit:RemoveEvents();
		pUnit:FullCastSpellOnTarget(35493, pUnit:GetClosestPlayer())
	end
end

function Boglash_Start(pUnit, Event)
	pUnit:RegisterEvent("hittest_1", 1000, 0)
end

RegisterUnitEvent(18281, 1, "Boglash_Start")
RegisterUnitEvent(18281, 3, "Boglash_OnKill")
RegisterUnitEvent(18281, 1, "Boglash_EnterCombat")