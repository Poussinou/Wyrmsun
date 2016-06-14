--       _________ __                 __
--      /   _____//  |_____________ _/  |______     ____  __ __  ______
--      \_____  \\   __\_  __ \__  \\   __\__  \   / ___\|  |  \/  ___/
--      /        \|  |  |  | \// __ \|  |  / __ \_/ /_/  >  |  /\___ \
--     /_______  /|__|  |__|  (____  /__| (____  /\___  /|____//____  >
--             \/                  \/          \//_____/            \/
--  ______________________                           ______________________
--                        T H E   W A R   B E G I N S
--         Stratagus - A free fantasy real time strategy game engine
--
--      (c) Copyright 2015-2016 by Andrettin
--
--      This program is free software; you can redistribute it and/or modify
--      it under the terms of the GNU General Public License as published by
--      the Free Software Foundation; either version 2 of the License, or
--      (at your option) any later version.
--
--      This program is distributed in the hope that it will be useful,
--      but WITHOUT ANY WARRANTY; without even the implied warranty of
--      MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
--      GNU General Public License for more details.
--
--      You should have received a copy of the GNU General Public License
--      along with this program; if not, write to the Free Software
--      Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
--

if (LoadedGame == false) then
	if not (GrandStrategy) then
		SetPlayerData(0, "Allow", "upgrade-dwarven-runewriting", "F")
	end
	SetPlayerData(0, "Resources", "gold", 0)
	SetPlayerData(0, "Resources", "lumber", 0)
	SetPlayerData(0, "Resources", "stone", 0)
	SetPlayerData(0, "Resources", "oil", 0)
	SetPlayerData(0, "RaceName", "dwarf")
	SetPlayerData(0, "Faction", "Brising Clan")
	
	if not (GrandStrategy) then
		unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Character", "Modsognir")
		unit = CreateUnit("unit-dwarven-axefighter", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Character", "Durin")
		unit = CreateUnit("unit-dwarven-witness", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Name", "Thjodrorir")
	elseif (GrandStrategyEventMap) then
		CreateProvinceUnits("Svarinshaug", 0, 1, false, false)
		CreateProvinceCustomHero("Svarinshaug", 0)
	
		if (FactionHasHero("dwarf", "Brising Clan", "Modsognir")) then
			unit = CreateUnit(GetGrandStrategyHeroUnitType("Modsognir"), 0, {Players[0].StartPos.x, Players[0].StartPos.y})
			SetUnitVariable(unit, "Character", "Modsognir")
		end
		if (FactionHasHero("dwarf", "Brising Clan", "Durin")) then
			unit = CreateUnit(GetGrandStrategyHeroUnitType("Durin"), 0, {Players[0].StartPos.x, Players[0].StartPos.y})
			SetUnitVariable(unit, "Character", "Durin")
		end
		
		unit = CreateUnit("unit-dwarven-witness", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		SetUnitVariable(unit, "Name", "Thjodrorir")
		SetUnitVariable(unit, "Starting", false) -- so that he isn't carried over

		if (GrandStrategyBattleBaseBuilding == false) then
			unit = OldCreateUnit("unit-brising-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
			unit = OldCreateUnit("unit-brising-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
			unit = OldCreateUnit("unit-brising-miner", 0, {Players[0].StartPos.x, Players[0].StartPos.y})
		end
	end

	SetPlayerData(0, "Allow", "unit-dwarven-town-hall", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-barracks", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-mushroom-farm", "F")
	SetPlayerData(0, "Allow", "unit-brising-smithy", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-lumber-mill", "F")
	SetPlayerData(0, "Allow", "unit-dwarven-sentry-tower", "F")
	SetPlayerData(0, "Allow", "unit-gold-mine", "F")
	SetPlayerData(0, "Allow", "unit-silver-mine", "F")
	SetPlayerData(0, "Allow", "unit-copper-mine", "F")
	SetPlayerData(0, "Allow", "unit-brising-miner", "F")
	
	GameTimeOfDay = 2
end

RemovePlayerObjective(GetFactionPlayer("Brising Clan"), "- Defeat your enemies")

AddTrigger(
	function()
		if (GameCycle >= 1000 and GetFactionExists("Brising Clan")) then
			player = GetFactionPlayer("Brising Clan")
			return true
		end
		return false
	end,
	function() 
		CallDialogue("a-rocky-home-thjodrorir-dream", player)
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Kill 8 Yales") and GetPlayerData(GetThisPlayer(), "UnitTypeKills", "unit-yale") >= 8) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		CallDialogue("a-rocky-home-yales-hunted", player)
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Gather 800 lumber and 400 stone") and GetPlayerData(GetThisPlayer(), "Resources", "lumber") >= 800 and GetPlayerData(GetThisPlayer(), "Resources", "stone") >= 400) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		CallDialogue("a-rocky-home-materials-collected", player)
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Modsognir must survive") and FindHero("Modsognir", GetThisPlayer()) == nil) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		RemovePlayerObjective(player, "- Modsognir must survive")
		ActionDefeat()
		return false
	end
)

AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		if (PlayerHasObjective(GetThisPlayer(), "- Durin must survive") and FindHero("Durin", GetThisPlayer()) == nil) then
			player = GetThisPlayer()
			return true
		end
		return false
	end,
	function()
		RemovePlayerObjective(player, "- Durin must survive")
		ActionDefeat()
		return false
	end
)

-- it is always day during this scenario
AddTrigger(
	function()
		if (GameCycle == 0) then
			return false
		end
		return true
	end,
	function()
		GameTimeOfDay = 2
		return true
	end
)
