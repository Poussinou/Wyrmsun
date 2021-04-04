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
--      (c) Copyright 2014-2021 by Andrettin
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

function OpenEncyclopediaUnitEntry(unit_name, state)
	if (state == "buildings" or state == "civilizations" or state == "deities" or state == "factions" or state == "heroes" or state == "items" or state == "texts" or state == "unique_items" or state == "units" or state == "worlds") then
		return;
	end
	
	if (state ~= "item_prefixes" and state ~= "item_suffixes") then
		if (state ~= "technologies" and string.find(unit_name, "upgrade") == nil) then
			if (
				(
					GetUnitTypeData(unit_name, "Notes") == ""
					and GetUnitTypeData(unit_name, "Description") == ""
					and GetUnitTypeData(unit_name, "Background") == ""
					and (GetUnitTypeData(unit_name, "Item") == false or GetUnitTypeData(unit_name, "Class") == "")
				)
			) then
				if (GetUnitTypeData(unit_name, "Parent") ~= "") then
					OpenEncyclopediaUnitEntry(GetUnitTypeData(unit_name, "Parent"), state)
				end
				
				return;
			end
		elseif (state == "technologies" and string.find(unit_name, "unit") == nil) then
			if (GetUpgradeData(unit_name, "Description") == "" and CUpgrade:Get(unit_name).Background == "") then
				return;
			end
		end
	end

	local menu = WarMenu(nil, GetBackground(GetUnitBackground(unit_name, state)))
	local offx = (Video.Width - 640 * get_scale_factor()) / 2
	local offy = (Video.Height - 480 * get_scale_factor()) / 2

	local encyclopedia_icon
	local encyclopedia_icon_frame = 0
	local civilization
	local faction
	local tooltip_name = ""
	local tooltip_civilization = ""
	if (string.find(unit_name, "upgrade") ~= nil) then
		if (string.find(unit_name, "prefix") == nil and string.find(unit_name, "suffix") == nil) then
			encyclopedia_icon = GetIconData(GetUpgradeData(unit_name, "Icon"), "File")
			encyclopedia_icon_frame = GetIconData(GetUpgradeData(unit_name, "Icon"), "Frame")
		else
			encyclopedia_icon = "interface/default/button_large_normal.png"
			encyclopedia_icon_grayed = "interface/default/button_large_grayed.png"
		end
		civilization = GetUpgradeData(unit_name, "Civilization")
		faction = GetUpgradeData(unit_name, "Faction")
		tooltip_name = _(GetUpgradeData(unit_name, "Name"))
		if (civilization ~= "" and civilization ~= "neutral") then
			tooltip_civilization = "(" ..  _(GetCivilizationData(civilization, "Display"))
			if (faction ~= "") then
				tooltip_civilization = tooltip_civilization ..  ": " .. _(GetFactionData(faction, "Name"))
			end
			tooltip_civilization = tooltip_civilization .. ")"
		end
	end
	local playercolor
	if (string.find(unit_name, "prefix") == nil and string.find(unit_name, "suffix") == nil) then
		if (civilization ~= "" and faction ~= "") then
			playercolor = GetFactionData(faction, "Color")
		elseif (civilization ~= "") then
			playercolor = GetCivilizationData(civilization, "DefaultColor")
		else
			playercolor = "gray"
		end
	end
	
	if (string.find(unit_name, "prefix") == nil and string.find(unit_name, "suffix") == nil) then
		local menu_image = PlayerColorImageButton("", playercolor)
		menu:add(menu_image, (Video.Width / 2) - 23 * get_scale_factor(), offy + (104 + 36*-1) * get_scale_factor())
		menu_image:setNormalImage(encyclopedia_icon)
		menu_image:setPressedImage(encyclopedia_icon)
		menu_image:setDisabledImage(encyclopedia_icon)
		menu_image:set_frame(encyclopedia_icon_frame)
		menu_image:setBorderSize(0) -- Andrettin: make buttons not have the borders they previously had
		menu_image:setIconFrameImage()
	end
	menu:addLabel("~<" .. tooltip_name .. "~>", offx + 320 * get_scale_factor(), offy + (104 + 36*-2) * get_scale_factor(), nil, true)

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(Video.Width - 64 * get_scale_factor(), Video.Height - 96 * get_scale_factor())
	l:setLineWidth(Video.Width - 64 * get_scale_factor())
	menu:add(l, 32 * get_scale_factor(), offy + (104 + 36*0 + 18) * get_scale_factor())
	local civilization = ""
	local faction = ""
	local unit_type_type = ""
	local unit_type_class = ""
	local notes = ""
	local description = ""
	local effects = ""
	local applies_to = ""
	local quote = ""
	local background = ""
	if (string.find(unit_name, "unit") ~= nil) then
	elseif (string.find(unit_name, "upgrade") ~= nil) then
		if (GetUpgradeData(unit_name, "Civilization") ~= "" and GetUpgradeData(unit_name, "Civilization") ~= "neutral") then
			civilization = _("Civilization") .. ": " .. _(GetCivilizationData(GetUpgradeData(unit_name, "Civilization"), "Display")) .. "\n\n"
			if (GetUpgradeData(unit_name, "Faction") ~= "") then
				faction = _("Faction") .. ": " .. _(GetFactionData(GetUpgradeData(unit_name, "Faction"), "Name")) .. "\n\n"
			end
		end
		if (GetUpgradeData(unit_name, "Class") ~= "") then
			unit_type_class = _("Class") .. ": " .. _(FullyCapitalizeString(string.gsub(GetUpgradeData(unit_name, "Class"), "_", " "))) .. "\n\n"
		end
		if (GetUpgradeData(unit_name, "Description") ~= "") then
			description = _("Description") .. ": " .. _(GetUpgradeData(unit_name, "Description")) .. "\n\n"
		end
		if (GetUpgradeData(unit_name, "Quote") ~= "") then
			quote = _("Quote") .. ": " .. _(GetUpgradeData(unit_name, "Quote")) .. "\n\n"
		end
		if (string.find(unit_name, "prefix") ~= nil or string.find(unit_name, "suffix") ~= nil) then
			effects = _("Effects") .. ": " .. GetUpgradeEffectsString(unit_name) .. ".\n\n"
			local applies_to_items = GetUpgradeData(unit_name, "AppliesTo")
			table.sort(applies_to_items)
			if (table.getn(applies_to_items) > 0) then
			applies_to = _("Available For") .. ": "
			for i=1,table.getn(applies_to_items) do
				if (i > 1) then
					applies_to = applies_to .. ", "
				end
				if (string.find(applies_to_items[i], "unit") ~= nil) then
					applies_to = applies_to .. _(GetPluralForm(GetUnitTypeData(applies_to_items[i], "Name")))
					if (GetUnitTypeData(applies_to_items[i], "Civilization") ~= "" and GetUnitTypeData(applies_to_items[i], "Faction") ~= "") then
						applies_to = applies_to .. " (" .. _(GetCivilizationData(GetUnitTypeData(applies_to_items[i], "Civilization"), "Display")) .. ": " .. _(GetFactionData(GetUnitTypeData(applies_to_items[i], "Faction"), "Name")) .. ")"
					elseif (GetUnitTypeData(applies_to_items[i], "Civilization") ~= "" and GetUnitTypeData(applies_to_items[i], "Civilization") ~= "neutral") then
						applies_to = applies_to .. " (" .. _(GetCivilizationData(GetUnitTypeData(applies_to_items[i], "Civilization"), "Display")) .. ")"
					end
				else
					applies_to = applies_to .. _(GetPluralForm(FullyCapitalizeString(string.gsub(applies_to_items[i], "-", " "))))
				end
			end
			applies_to = applies_to .. ".\n\n"
			end
		end
		if (GetUpgradeData(unit_name, "Background") ~= "") then
			background = _("Background") .. ": " .. _(GetUpgradeData(unit_name, "Background")) .. "\n\n"
		end
	end
	l:setCaption(civilization .. faction .. unit_type_type .. unit_type_class .. description .. quote .. notes .. effects .. applies_to .. background)

	local has_family_tree_button = false
	if (state == "heroes") then
		--[[
		menu:addFullButton(_("~!Family Tree"), "f", offx + 208, offy + 104 + (36 * 11),
			function()
				RunFamilyTreeMenu(unit_name);
			end
		)
		has_family_tree_button = true
		--]]
	end
	
	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208 * get_scale_factor(), offy + (104 + (36 * 9)) * get_scale_factor(),
		function() menu:stop(); end)
	menu:run()
end

function RunEncyclopediaGameConceptsMenu()	
	local game_concepts = GameConcepts

	local menu = WarMenu(nil, GetBackground("backgrounds/wyrm.png"))
	local offx = (Video.Width - 640 * get_scale_factor()) / 2
	local offy = (Video.Height - 480 * get_scale_factor()) / 2
	
	local height_offset = 2
	if (Video.Height >= (600 * get_scale_factor())) then
		height_offset = 2 -- change this to 0 if the number of game concept entries becomes too large
	else
		height_offset = 2
	end
	
	AddTopEncyclopediaLabel(menu, offx, offy, "game_concepts", height_offset)

	local game_concept_x = 0
	if (GetTableSize(game_concepts) > 20) then
		game_concept_x = -2
	elseif (GetTableSize(game_concepts) > 10) then
		game_concept_x = -1
	end
	local game_concept_y = -3

	for game_concept_key, game_concept_value in pairsByKeys(game_concepts) do
		local game_concept_hotkey = ""		
		if (string.find(_(game_concepts[game_concept_key].Name), "~!") ~= nil) then
			game_concept_hotkey = string.sub(string.match(_(game_concepts[game_concept_key].Name), "~!%a"), 3)
			game_concept_hotkey = string.lower(game_concept_hotkey)
		end
		menu:addFullButton(_(game_concepts[game_concept_key].Name), game_concept_hotkey, offx + (208 + (113 * game_concept_x)) * get_scale_factor(), offy + (104 + (36 * (game_concept_y + height_offset))) * get_scale_factor(),
			function() OpenEncyclopediaGameConceptEntry(game_concept_key); end)

		if (game_concept_y > 5) then
			game_concept_x = game_concept_x + 2
			game_concept_y = -3
		else
			game_concept_y = game_concept_y + 1
		end
	end

--	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208, offy + 104 + (36 * (10 - height_offset) + 18),
	menu:addFullButton(_("~!Previous Menu"), "p", offx + 208 * get_scale_factor(), offy + (104 + (36 * 9)) * get_scale_factor(),
		function() menu:stop(); end)

	menu:run()
end

function OpenEncyclopediaGameConceptEntry(game_concept_key)
	local game_concepts = GameConcepts

	local encyclopedia_entry_menu = WarMenu(nil, GetBackground("backgrounds/wyrm.png"))
	local offx = (Video.Width - 640 * get_scale_factor()) / 2
	local offy = (Video.Height - 480 * get_scale_factor()) / 2

	encyclopedia_entry_menu:addLabel("~<" .. game_concepts[game_concept_key].Name .. "~>", offx + 320 * get_scale_factor(), offy + (104 + 36*-2) * get_scale_factor(), nil, true)

	local l = MultiLineLabel()
	l:setFont(Fonts["game"])
	l:setSize(Video.Width - 64 * get_scale_factor(), Video.Height - 96 * get_scale_factor())
	l:setLineWidth(Video.Width - 64 * get_scale_factor())
	encyclopedia_entry_menu:add(l, 32 * get_scale_factor(), offy + (104 + 36*0) * get_scale_factor())
	local description = ""
	if (game_concepts[game_concept_key].Description ~= nil) then
		description = _("Description") .. ": " .. game_concepts[game_concept_key].Description
	end
	l:setCaption(description)
			
	encyclopedia_entry_menu:addFullButton(_("~!Previous Menu"), "p", offx + 208 * get_scale_factor(), offy + (104 + (36 * 9)) * get_scale_factor(),
		function() encyclopedia_entry_menu:stop(); end)
	encyclopedia_entry_menu:run()
end

function GetCivilizationBackground(civilization)
	if (civilization == "basque") then
		return "backgrounds/gryphon.png"
	elseif (civilization == "castillian" or civilization == "french" or civilization == "italian" or civilization == "latin" or civilization == "portuguese" or civilization == "romanian") then
		return "backgrounds/gryphon.png"
	elseif (civilization == "dwarf") then
		return "backgrounds/yale.png"
	elseif (civilization == "elf") then
		return "backgrounds/yale.png"
	elseif (civilization == "ettin") then
		return "backgrounds/wyrm.png"
	elseif (civilization == "germanic") then
		return "backgrounds/wyrm.png"
	elseif (civilization == "gnome") then
		return "backgrounds/yale.png"
	elseif (civilization == "goblin") then
		return "backgrounds/wyrm.png"
	elseif (civilization == "greek") then
		return "backgrounds/gryphon.png"
	elseif (civilization == "kobold") then
		return "backgrounds/wyrm.png"
	elseif (civilization == "illyrian") then
		return "backgrounds/gryphon.png"
	elseif (civilization == "minoan") then
		return "backgrounds/gryphon.png"
	elseif (civilization == "orc") then
		return "backgrounds/wyrm.png"
	elseif (civilization == "persian") then
		return "backgrounds/gryphon.png"
	elseif (civilization == "phoenician") then
		return "backgrounds/gryphon.png"
	elseif (civilization == "slav") then
		return "backgrounds/wyrm.png"
	elseif (civilization == "anglo_saxon" or civilization == "english" or civilization == "frankish" or civilization == "goth" or civilization == "norse" or civilization == "suebi" or civilization == "teuton") then
		return "backgrounds/wyrm.png"
	end
	
	return "backgrounds/wyrm.png"
end

function GetUnitBackground(unit_name, state)
	if (string.find(unit_name, "upgrade") ~= nil) then
		return GetCivilizationBackground(GetUpgradeData(unit_name, "Civilization"))
	end
	
	return "backgrounds/wyrm.png"
end

function AddTopEncyclopediaLabel(menu, offx, offy, state, height_offset)
	if not (height_offset) then
		height_offset = 2
	end

	local top_label_string = "~<" .. _("Encyclopedia") .. ": "
	if (state == "game_concepts") then
		top_label_string = top_label_string .. _("Game Concepts")
	end
	top_label_string = top_label_string .. "~>"
	menu:addLabel(top_label_string, offx + 320 * get_scale_factor(), offy + (104 + 36 * (-4 + height_offset)) * get_scale_factor(), nil, true)
end
