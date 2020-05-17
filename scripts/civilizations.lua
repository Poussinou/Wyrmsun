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
--      (c) Copyright 2015-2020 by Andrettin
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

--[[
DefineCivilization("dutch", { -- information for later use
	Display = "Dutch",
	Playable = false,
	Visible = true,
	Species = "human",
	ParentCivilization = "teuton",
	Language = "dutch",
	Adjective = "Dutch",
	DevelopsFrom = {"teuton"},
	ProvinceNames = {
		"Gelderland", -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
		"Overijssel" -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
	},
	RiverNames = {
		"Ijssel" -- Source: B. H. Slicher van Bath, "Dutch Tribal Problems", 1949, p. 335.
	}
})
--]]

DefineCivilization("dwarf", {
	Display = "Dwarf",
	Visible = true,
	Species = "dwarf",
	ParentCivilization = "neutral",
	Language = "dwarven",
	Interface = "dwarven",
	Adjective = "Dwarven",
	DefaultColor = "red",
	CivilizationUpgrade = "upgrade-dwarven-civilization",
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-dwarven-shield-1",
		"attack", "icon-dwarven-battle-axe",
		"patrol", "icon-dwarven-patrol-land",
		"stand-ground", "icon-dwarven-stand-ground",
		"return-goods", "icon-dwarven-return-goods"
	},
	UIFillers = {
		"interface/dwarven/filler_bottom.png", 380, -181,
		"interface/dwarven/resource.png", 0, 0,
		"interface/dwarven/buttonpanel.png", -256, -200,
		"interface/dwarven/infopanel.png", 0, -200
	},
	Description = "Dwarves live in the world of Nidavellir, where gnomes, goblins and kobolds also dwell. They usually prefer living in mountainous terrain or underground, and build their dwellings mostly out of stone. Dwarves are particularly talented at smithing, and ownership of precious metals is a passion for many of them.",
	PersonalNames = {
		"female", "Gneissus", -- from Dyson Logos' The Tomb of Durâhn Oakenshield, which the author agreed to release under the GPLv2
		"male", "Ai", -- dwarf from Norse mythology who was a settler of Joruvellir
		"male", "Aigaithas", -- from Battle for Wesnoth
		"male", "Aigaithil", -- from Battle for Wesnoth
		"male", "Aigaithing", -- from Battle for Wesnoth
		"male", "Aigaithol", -- from Battle for Wesnoth
		"male", "Aigalas", -- from Battle for Wesnoth
		"male", "Aigaling", -- from Battle for Wesnoth
		"male", "Aigalis", -- from Battle for Wesnoth
		"male", "Aigalol", -- from Battle for Wesnoth
		"male", "Aigalsil", -- from Battle for Wesnoth
		"male", "Aigatas", -- from Battle for Wesnoth
		"male", "Aigatis", -- from Battle for Wesnoth
		"male", "Aigatlos", -- from Battle for Wesnoth
		"male", "Aigatsil", -- from Battle for Wesnoth
		"male", "Aigatsol", -- from Battle for Wesnoth
		"male", "Aigatus", -- from Battle for Wesnoth
		"male", "Aigcatas", -- from Battle for Wesnoth
		"male", "Aigcatil", -- from Battle for Wesnoth
		"male", "Aigcating", -- from Battle for Wesnoth
		"male", "Aigcatis", -- from Battle for Wesnoth
		"male", "Aigcatsil", -- from Battle for Wesnoth
		"male", "Aigcatsol", -- from Battle for Wesnoth
		"male", "Aigcatus", -- from Battle for Wesnoth
		"male", "Aigdring", -- from Battle for Wesnoth
		"male", "Aigdris", -- from Battle for Wesnoth
		"male", "Aigdrlos", -- from Battle for Wesnoth
		"male", "Aigdrsil", -- from Battle for Wesnoth
		"male", "Aigdrsol", -- from Battle for Wesnoth
		"male", "Aigduras", -- from Battle for Wesnoth
		"male", "Aigdurlos", -- from Battle for Wesnoth
		"male", "Aigdursol", -- from Battle for Wesnoth
		"male", "Aiglondur", -- dwarven hero in Battle for Wesnoth: The Hammer of Thursagan
		"male", "Aigthaing", -- from Battle for Wesnoth
		"male", "Aigthais", -- from Battle for Wesnoth
		"male", "Aigthasil", -- from Battle for Wesnoth
		"male", "Aigthaus", -- from Battle for Wesnoth
		"male", "Alaithas", -- from Battle for Wesnoth
		"male", "Alaithis", -- from Battle for Wesnoth
		"male", "Alaithlos", -- from Battle for Wesnoth
		"male", "Alaithol", -- from Battle for Wesnoth
		"male", "Alaithsol", -- from Battle for Wesnoth
		"male", "Alaithus", -- from Battle for Wesnoth
		"male", "Alalas", -- from Battle for Wesnoth
		"male", "Alalil", -- from Battle for Wesnoth
		"male", "Alalol", -- from Battle for Wesnoth
		"male", "Alalsol", -- from Battle for Wesnoth
		"male", "Alalus", -- from Battle for Wesnoth
		"male", "Alatas", -- from Battle for Wesnoth
		"male", "Alatil", -- from Battle for Wesnoth
		"male", "Alating", -- from Battle for Wesnoth
		"male", "Alatlos", -- from Battle for Wesnoth
		"male", "Alatsil", -- from Battle for Wesnoth
		"male", "Alberich", -- dwarf from German sagas
		"male", "Alcatil", -- from Battle for Wesnoth
		"male", "Alcatis", -- from Battle for Wesnoth
		"male", "Alcatlos", -- from Battle for Wesnoth
		"male", "Alcatsil", -- from Battle for Wesnoth
		"male", "Aldras", -- from Battle for Wesnoth
		"male", "Aldril", -- from Battle for Wesnoth
		"male", "Aldring", -- from Battle for Wesnoth
		"male", "Aldris", -- from Battle for Wesnoth
		"male", "Aldrlos", -- from Battle for Wesnoth
		"male", "Aldrol", -- from Battle for Wesnoth
		"male", "Aldrsol", -- from Battle for Wesnoth
		"male", "Alduras", -- from Battle for Wesnoth
		"male", "Aldurlos", -- from Battle for Wesnoth
		"male", "Aldurol", -- from Battle for Wesnoth
		"male", "Alf", -- dwarf from Norse mythology who was a settler of Joruvellir
		"male", "Alfrigg", -- dwarf from Norse mythology
		"male", "Alsvid", -- dwarf from Norse mythology
		"male", "Althaas", -- from Battle for Wesnoth
		"male", "Althail", -- from Battle for Wesnoth
		"male", "Althalos", -- from Battle for Wesnoth
		"male", "Althaol", -- from Battle for Wesnoth
		"male", "Althasil", -- from Battle for Wesnoth
		"male", "Althasol", -- from Battle for Wesnoth
		"male", "Althaus", -- from Battle for Wesnoth
		"male", "Althjof", -- "mighty thief", dwarf from Norse mythology
		"male", "Anaithas", -- from Battle for Wesnoth
		"male", "Anaithil", -- from Battle for Wesnoth
		"male", "Anaithing", -- from Battle for Wesnoth
		"male", "Anaithis", -- from Battle for Wesnoth
		"male", "Anaithsil", -- from Battle for Wesnoth
		"male", "Anaithus", -- from Battle for Wesnoth
		"male", "Analil", -- from Battle for Wesnoth
		"male", "Anallos", -- from Battle for Wesnoth
		"male", "Analol", -- from Battle for Wesnoth
		"male", "Analsil", -- from Battle for Wesnoth
		"male", "Analus", -- from Battle for Wesnoth
		"male", "Anatas", -- from Battle for Wesnoth
		"male", "Anating", -- from Battle for Wesnoth
		"male", "Anatis", -- from Battle for Wesnoth
		"male", "Anatol", -- from Battle for Wesnoth
		"male", "Anatsol", -- from Battle for Wesnoth
		"male", "Ancatas", -- from Battle for Wesnoth
		"male", "Ancatil", -- from Battle for Wesnoth
		"male", "Ancatol", -- from Battle for Wesnoth
		"male", "Ancatus", -- from Battle for Wesnoth
		"male", "Andril", -- from Battle for Wesnoth
		"male", "Andris", -- from Battle for Wesnoth
		"male", "Andrlos", -- from Battle for Wesnoth
		"male", "Andrus", -- from Battle for Wesnoth
		"male", "Anduril", -- from Battle for Wesnoth
		"male", "Andurol", -- from Battle for Wesnoth
		"male", "Andursol", -- from Battle for Wesnoth
		"male", "Andurus", -- from Battle for Wesnoth
		"male", "Andvari", -- dwarf from Norse mythology who possessed a lot of gold, including a golden ring (Andvaranaut) which was stolen by Loki; was possibly one of the settlers of Joruvellir; son of Oin
		"male", "Angarthing", -- dwarf from Battle for Wesnoth: The Hammer of Thursagan
		"male", "Anthaas", -- from Battle for Wesnoth
		"male", "Anthaing", -- from Battle for Wesnoth
		"male", "Anthais", -- from Battle for Wesnoth
		"male", "Anthaol", -- from Battle for Wesnoth
		"male", "Anthasil", -- from Battle for Wesnoth
		"male", "Anthasol", -- from Battle for Wesnoth
		"male", "Anthaus", -- from Battle for Wesnoth
		"male", "Augaithas", -- from Battle for Wesnoth
		"male", "Augaithing", -- from Battle for Wesnoth
		"male", "Augaithsil", -- from Battle for Wesnoth
		"male", "Augaithus", -- from Battle for Wesnoth
		"male", "Augalas", -- from Battle for Wesnoth
		"male", "Augaling", -- from Battle for Wesnoth
		"male", "Augalol", -- from Battle for Wesnoth
		"male", "Augating", -- from Battle for Wesnoth
		"male", "Augatlos", -- from Battle for Wesnoth
		"male", "Augatol", -- from Battle for Wesnoth
		"male", "Augatsil", -- from Battle for Wesnoth
		"male", "Augatsol", -- from Battle for Wesnoth
		"male", "Augcatas", -- from Battle for Wesnoth
		"male", "Augcatil", -- from Battle for Wesnoth
		"male", "Augcatis", -- from Battle for Wesnoth
		"male", "Augcatol", -- from Battle for Wesnoth
		"male", "Augcatsil", -- from Battle for Wesnoth
		"male", "Augcatus", -- from Battle for Wesnoth
		"male", "Augdras", -- from Battle for Wesnoth
		"male", "Augdris", -- from Battle for Wesnoth
		"male", "Augdrsil", -- from Battle for Wesnoth
		"male", "Augdrus", -- from Battle for Wesnoth
		"male", "Augduras", -- from Battle for Wesnoth
		"male", "Augduril", -- from Battle for Wesnoth
		"male", "Augduring", -- from Battle for Wesnoth
		"male", "Augdurol", -- from Battle for Wesnoth
		"male", "Augdursol", -- from Battle for Wesnoth
		"male", "Augdurus", -- from Battle for Wesnoth
		"male", "Augthail", -- from Battle for Wesnoth
		"male", "Augthais", -- from Battle for Wesnoth
		"male", "Augthalos", -- from Battle for Wesnoth
		"male", "Augthaol", -- from Battle for Wesnoth
		"male", "Aurvang", -- dwarf from Norse mythology
		"male", "Austri", -- dwarf from Norse mythology (name means "the Eastern"); Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 101; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 771.
		"male", "Bari", -- dwarf from Norse mythology
		"male", "Berling", -- dwarf from Norse mythology
		"male", "Bibung", -- dwarf from Norse mythology
		"male", "Burin", -- dwarf from Battle for Wesnoth: The Rise of Wesnoth
		"male", "Delling", -- dwarf from Norse mythology
		"male", "Delling", -- dwarf from Norse mythology
		"male", "Dolgthvari", -- dwarf from Norse mythology
		"male", "Dori", -- dwarf from Norse mythology
		"male", "Duf", -- dwarf from Norse mythology
		"male", "Dulaithil", -- from Battle for Wesnoth
		"male", "Dulaithing", -- from Battle for Wesnoth
		"male", "Dulaithlos", -- from Battle for Wesnoth
		"male", "Dulaithsil", -- from Battle for Wesnoth
		"male", "Dulaithsol", -- from Battle for Wesnoth
		"male", "Dulalas", -- from Battle for Wesnoth
		"male", "Dulaling", -- from Battle for Wesnoth
		"male", "Dulalis", -- from Battle for Wesnoth
		"male", "Dulalsil", -- from Battle for Wesnoth
		"male", "Dulatil", -- from Battle for Wesnoth
		"male", "Dulating", -- from Battle for Wesnoth
		"male", "Dulatol", -- from Battle for Wesnoth
		"male", "Dulatsol", -- from Battle for Wesnoth
		"male", "Dulatus", -- from Battle for Wesnoth
		"male", "Dulcatil", -- from Battle for Wesnoth
		"male", "Dulcating", -- from Battle for Wesnoth
		"male", "Dulcatlos", -- from Battle for Wesnoth
		"male", "Dulcatol", -- from Battle for Wesnoth
		"male", "Dulcatsil", -- from Battle for Wesnoth
		"male", "Dulcatsol", -- from Battle for Wesnoth
		"male", "Dulcatulos", -- from Battle for Wesnoth: The Hammer of Thursagan
		"male", "Duldril", -- from Battle for Wesnoth
		"male", "Duldris", -- from Battle for Wesnoth
		"male", "Duldrlos", -- from Battle for Wesnoth
		"male", "Duldrol", -- from Battle for Wesnoth
		"male", "Duldrsil", -- from Battle for Wesnoth
		"male", "Duldrus", -- from Battle for Wesnoth
		"male", "Dulduras", -- from Battle for Wesnoth
		"male", "Dulduring", -- from Battle for Wesnoth
		"male", "Duldursil", -- from Battle for Wesnoth
		"male", "Duldurus", -- from Battle for Wesnoth
		"male", "Dulsi", -- dwarf from Norse mythology; not entirely clear if this is the name of a particular dwarf, or if it means "dwarf"; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 109.
		"male", "Dulthalos", -- from Battle for Wesnoth
		"male", "Dulthasil", -- from Battle for Wesnoth
		"male", "Dulthasol", -- from Battle for Wesnoth
		"male", "Dulthaus", -- from Battle for Wesnoth
		"male", "Durahn", -- "Durâhn"; from Dyson Logos' The Tomb of Durâhn Oakenshield, which the author agreed to release under the GPLv2
		"male", "Dursil", -- dwarf from Battle for Wesnoth: The Rise of Wesnoth
		"male", "Eggerich", -- dwarf from German sagas
		"male", "Fal", -- dwarf from Norse mythology
		"male", "Fid", -- dwarf from Norse mythology
		"male", "Fili", -- dwarf from Norse mythology
		"male", "Frag", -- dwarf from Norse mythology
		"male", "Frar", -- dwarf from Norse mythology
		"male", "Fundin", -- dwarf from Norse mythology
		"male", "Ginnar", -- dwarf from Norse mythology
		"male", "Glamaithil", -- from Battle for Wesnoth
		"male", "Glamaithis", -- from Battle for Wesnoth
		"male", "Glamaithol", -- from Battle for Wesnoth
		"male", "Glamaithsol", -- from Battle for Wesnoth
		"male", "Glamalil", -- from Battle for Wesnoth
		"male", "Glamaling", -- from Battle for Wesnoth
		"male", "Glamalis", -- from Battle for Wesnoth
		"male", "Glamallos", -- from Battle for Wesnoth
		"male", "Glamalsil", -- from Battle for Wesnoth
		"male", "Glamalus", -- from Battle for Wesnoth
		"male", "Glamatil", -- from Battle for Wesnoth
		"male", "Glamatus", -- from Battle for Wesnoth
		"male", "Glamcatas", -- from Battle for Wesnoth
		"male", "Glamcatil", -- from Battle for Wesnoth
		"male", "Glamcating", -- from Battle for Wesnoth
		"male", "Glamcatsil", -- from Battle for Wesnoth
		"male", "Glamcatus", -- from Battle for Wesnoth
		"male", "Glamdras", -- from Battle for Wesnoth
		"male", "Glamdril", -- from Battle for Wesnoth
		"male", "Glamdrlos", -- from Battle for Wesnoth
		"male", "Glamdrsol", -- from Battle for Wesnoth
		"male", "Glamduras", -- from Battle for Wesnoth
		"male", "Glamduril", -- from Battle for Wesnoth
		"male", "Glamduring", -- from Battle for Wesnoth
		"male", "Glamduris", -- from Battle for Wesnoth
		"male", "Glamdursol", -- from Battle for Wesnoth
		"male", "Glamthaas", -- from Battle for Wesnoth
		"male", "Glamthaol", -- from Battle for Wesnoth
		"male", "Glamthasil", -- from Battle for Wesnoth
		"male", "Glamthasol", -- from Battle for Wesnoth
		"male", "Glamthaus", -- from Battle for Wesnoth
		"male", "Glinar", -- dwarf from Battle for Wesnoth: The Sceptre of Fire
		"male", "Gloin", -- dwarf from Norse mythology
		"male", "Glomin", -- from Battle for Wesnoth
		"male", "Goldemar", -- dwarf from German sagas
		"male", "Gomaithas", -- from Battle for Wesnoth
		"male", "Gomaithil", -- from Battle for Wesnoth
		"male", "Gomaithol", -- from Battle for Wesnoth
		"male", "Gomaithsol", -- from Battle for Wesnoth
		"male", "Gomalil", -- from Battle for Wesnoth
		"male", "Gomalis", -- from Battle for Wesnoth
		"male", "Gomalus", -- from Battle for Wesnoth
		"male", "Gomatas", -- from Battle for Wesnoth
		"male", "Gomatil", -- from Battle for Wesnoth
		"male", "Gomating", -- from Battle for Wesnoth
		"male", "Gomatis", -- from Battle for Wesnoth
		"male", "Gomatlos", -- from Battle for Wesnoth
		"male", "Gomatol", -- from Battle for Wesnoth
		"male", "Gomcatil", -- from Battle for Wesnoth
		"male", "Gomcatis", -- from Battle for Wesnoth
		"male", "Gomcatlos", -- from Battle for Wesnoth
		"male", "Gomdras", -- from Battle for Wesnoth
		"male", "Gomdril", -- from Battle for Wesnoth
		"male", "Gomdring", -- from Battle for Wesnoth
		"male", "Gomdris", -- from Battle for Wesnoth
		"male", "Gomdrol", -- from Battle for Wesnoth
		"male", "Gomdrsil", -- from Battle for Wesnoth
		"male", "Gomduris", -- from Battle for Wesnoth
		"male", "Gomdurlos", -- from Battle for Wesnoth
		"male", "Gomdursil", -- from Battle for Wesnoth
		"male", "Gomdursol", -- from Battle for Wesnoth
		"male", "Gomdurus", -- from Battle for Wesnoth
		"male", "Gomthaas", -- from Battle for Wesnoth
		"male", "Gomthalos", -- from Battle for Wesnoth
		"male", "Gomthasol", -- from Battle for Wesnoth
		"male", "Grerr", -- dwarf from Norse mythology
		"male", "Grimnir", -- dwarven pathfinder from Battle for Wesnoth: Under the Burning Suns
		"male", "Hamel", -- dwarf from Battle for Wesnoth: Northern Rebirth and Battle for Wesnoth: The Hammer of Thursagan
		"male", "Hannar", -- "Hannarr"; dwarf from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 239.
		"male", "Har", -- dwarf from Norse mythology
		"male", "Haur", -- dwarf from Norse mythology
		"male", "Heptifili", -- dwarf from Norse mythology
		"male", "Hledjolf", -- dwarf from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 272.
		"male", "Hornbori", -- dwarf from Norse mythology
		"male", "Hugstari", -- dwarf from Norse mythology
		"male", "Ingi", -- dwarf from Norse mythology
		"male", "Iri", -- dwarf from Norse mythology
		"male", "Isuldan", -- from Dyson Logos' The Tomb of Durâhn Oakenshield, which the author agreed to release under the GPLv2
		"male", "Jari", -- dwarf from Norse mythology
		"male", "Karrag", -- dwarf from Battle for Wesnoth: The Hammer of Thursagan
		"male", "Kili", -- dwarf from Norse mythology
		"male", "Kinan", -- dwarf from Battle for Wesnoth: The Sceptre of Fire
		"male", "Laurin", -- dwarf from German sagas
		"male", "Lit", -- dwarf from Norse mythology
		"male", "Lofar", -- dwarf from Norse mythology who was a descendant of the settlers of Joruvellir
		"male", "Loni", -- dwarf from Norse mythology
		"male", "Mjodvitnir", -- dwarf from Norse mythology
		"male", "Nabbi", -- dwarven mastersmith from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 100.
		"male", "Naraithil", -- from Battle for Wesnoth
		"male", "Naraithing", -- from Battle for Wesnoth
		"male", "Naraithol", -- from Battle for Wesnoth
		"male", "Naraithsil", -- from Battle for Wesnoth
		"male", "Naraithsol", -- from Battle for Wesnoth
		"male", "Naraithus", -- from Battle for Wesnoth
		"male", "Naralas", -- from Battle for Wesnoth
		"male", "Naralil", -- from Battle for Wesnoth
		"male", "Naralsil", -- from Battle for Wesnoth
		"male", "Naralus", -- from Battle for Wesnoth
		"male", "Naratlos", -- from Battle for Wesnoth
		"male", "Naratol", -- from Battle for Wesnoth
		"male", "Naratsil", -- from Battle for Wesnoth
		"male", "Narcating", -- from Battle for Wesnoth
		"male", "Narcatis", -- from Battle for Wesnoth
		"male", "Narcatol", -- from Battle for Wesnoth
		"male", "Narcatsil", -- from Battle for Wesnoth
		"male", "Narcatsol", -- from Battle for Wesnoth
		"male", "Nardras", -- from Battle for Wesnoth
		"male", "Nardril", -- from Battle for Wesnoth
		"male", "Nardring", -- from Battle for Wesnoth
		"male", "Nardris", -- from Battle for Wesnoth
		"male", "Nardrol", -- from Battle for Wesnoth
		"male", "Nardrsil", -- from Battle for Wesnoth
		"male", "Nardrsol", -- from Battle for Wesnoth
		"male", "Nardrus", -- from Battle for Wesnoth
		"male", "Narduras", -- from Battle for Wesnoth
		"male", "Narduril", -- from Battle for Wesnoth
		"male", "Nardurol", -- from Battle for Wesnoth
		"male", "Narthalos", -- from Battle for Wesnoth
		"male", "Narthaol", -- from Battle for Wesnoth
		"male", "Nefi", -- dwarf from Norse mythology
		"male", "Neglur", -- dwarf from Battle for Wesnoth: The Sceptre of Fire
		"male", "Nidi", -- dwarf from Norse mythology
		"male", "Nidjung", -- dwarf from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 454.
		"male", "Nordri", -- dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 101.
		"male", "Nyi", -- dwarf from Norse mythology
		"male", "Nyr", -- dwarf from Norse mythology
		"male", "Nyrad", -- dwarf from Norse mythology
		"male", "Oin", -- dwarf from Norse mythology who was the father of Andvari
		"male", "Olurf", -- dwarf from Battle for Wesnoth: The Legend of Wesmere
		"male", "Ori", -- dwarf from Norse mythology
		"male", "Pelaithas", -- from Battle for Wesnoth
		"male", "Pelaithil", -- from Battle for Wesnoth
		"male", "Pelaithing", -- from Battle for Wesnoth
		"male", "Pelaithis", -- from Battle for Wesnoth
		"male", "Pelaithlos", -- from Battle for Wesnoth
		"male", "Pelaithol", -- from Battle for Wesnoth
		"male", "Pelaithsil", -- from Battle for Wesnoth
		"male", "Pelaithsol", -- from Battle for Wesnoth
		"male", "Pelalil", -- from Battle for Wesnoth
		"male", "Pelaling", -- from Battle for Wesnoth
		"male", "Pelalis", -- from Battle for Wesnoth
		"male", "Pelalsil", -- from Battle for Wesnoth
		"male", "Pelalsol", -- from Battle for Wesnoth
		"male", "Pelalus", -- from Battle for Wesnoth
		"male", "Pelatil", -- from Battle for Wesnoth
		"male", "Pelating", -- from Battle for Wesnoth
		"male", "Pelatis", -- from Battle for Wesnoth
		"male", "Pelatol", -- from Battle for Wesnoth
		"male", "Pelatsil", -- from Battle for Wesnoth
		"male", "Pelatus", -- from Battle for Wesnoth
		"male", "Pelcating", -- from Battle for Wesnoth
		"male", "Pelcatlos", -- from Battle for Wesnoth
		"male", "Pelcatol", -- from Battle for Wesnoth
		"male", "Pelcatsil", -- from Battle for Wesnoth
		"male", "Peldras", -- from Battle for Wesnoth
		"male", "Peldril", -- from Battle for Wesnoth
		"male", "Peldrsol", -- from Battle for Wesnoth
		"male", "Peldrus", -- from Battle for Wesnoth
		"male", "Pelduril", -- from Battle for Wesnoth
		"male", "Pelduring", -- from Battle for Wesnoth
		"male", "Pelduris", -- from Battle for Wesnoth
		"male", "Peldurol", -- from Battle for Wesnoth
		"male", "Peldursol", -- from Battle for Wesnoth
		"male", "Peldurus", -- from Battle for Wesnoth
		"male", "Pelthaas", -- from Battle for Wesnoth
		"male", "Pelthail", -- from Battle for Wesnoth
		"male", "Pelthasil", -- from Battle for Wesnoth
		"male", "Radsvid", -- dwarf from Norse mythology
		"male", "Rekk", -- dwarf from Norse mythology
		"male", "Relgorn", -- dwarf from Battle for Wesnoth: Heir to the Throne and Battle for Wesnoth: Delfador's Memoirs
		"male", "Rynan", -- dwarf from Battle for Wesnoth: The Sceptre of Fire
		"male", "Skavid", -- dwarf from Norse mythology
		"male", "Skirvir", -- dwarf from Norse mythology
		"male", "Solblindi", -- dwarf from Norse mythology
		"male", "Sudri", -- dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 101.
		"male", "Svarin", -- dwarf from Norse mythology
		"male", "Sviar", -- dwarf from Norse mythology
		"male", "Sviur", -- dwarf from Norse mythology
		"male", "Theganli", -- dwarf from Battle for Wesnoth: The Sceptre of Fire; jeweler of Durstorn's clan
		"male", "Thekk", -- dwarf from Norse mythology
		"male", "Thorin", -- dwarf from Norse mythology
		"male", "Thrain", -- dwarf from Norse mythology
		"male", "Thror", -- dwarf from Norse mythology
		"male", "Trithaithas", -- from Battle for Wesnoth
		"male", "Trithaithil", -- from Battle for Wesnoth
		"male", "Trithaithis", -- from Battle for Wesnoth
		"male", "Trithaithlos", -- from Battle for Wesnoth
		"male", "Trithaithol", -- from Battle for Wesnoth
		"male", "Trithaithsil", -- from Battle for Wesnoth
		"male", "Trithaithsol", -- from Battle for Wesnoth
		"male", "Trithaithus", -- from Battle for Wesnoth
		"male", "Trithalis", -- from Battle for Wesnoth
		"male", "Trithalol", -- from Battle for Wesnoth
		"male", "Trithatas", -- from Battle for Wesnoth
		"male", "Trithatil", -- from Battle for Wesnoth
		"male", "Trithatlos", -- from Battle for Wesnoth
		"male", "Trithatsol", -- from Battle for Wesnoth
		"male", "Trithcatlos", -- from Battle for Wesnoth
		"male", "Trithcatsol", -- from Battle for Wesnoth
		"male", "Trithcatus", -- from Battle for Wesnoth
		"male", "Trithdril", -- from Battle for Wesnoth
		"male", "Trithdring", -- from Battle for Wesnoth
		"male", "Trithdris", -- from Battle for Wesnoth
		"male", "Trithdrlos", -- from Battle for Wesnoth
		"male", "Trithdrol", -- from Battle for Wesnoth
		"male", "Trithdrsol", -- from Battle for Wesnoth
		"male", "Trithdrus", -- from Battle for Wesnoth
		"male", "Trithduril", -- from Battle for Wesnoth
		"male", "Trithduring", -- from Battle for Wesnoth
		"male", "Trithdurlos", -- from Battle for Wesnoth
		"male", "Trithdurol", -- from Battle for Wesnoth
		"male", "Trithdursil", -- from Battle for Wesnoth
		"male", "Trithdurus", -- from Battle for Wesnoth
		"male", "Triththaas", -- from Battle for Wesnoth
		"male", "Triththail", -- from Battle for Wesnoth
		"male", "Triththaing", -- from Battle for Wesnoth
		"male", "Triththasol", -- from Battle for Wesnoth
		"male", "Triththaus", -- from Battle for Wesnoth
		"male", "Tuta", -- dwarf from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 645.
		"male", "Ulrek", -- dwarf from Battle for Wesnoth: Delfador's Memoirs
		"male", "Uni", -- dwarf from Norse mythology
		"male", "Vali", -- dwarf from Norse mythology
		"male", "Var", -- dwarf from Norse mythology
		"male", "Vegdrasil", -- dwarf from Norse mythology
		"male", "Vestri", -- dwarf from Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 101.
		"male", "Vig", -- dwarf from Norse mythology
		"male", "Vigdvalin", -- "Víg-dvalinn"; dwarf from Norse mythology; Source: Richard Cleasby and Gudbrand Vigfusson, "An Icelandic-English Dictionary", 1874, p. 715.
		"male", "Virfir", -- dwarf from Norse mythology
		"male", "Vit" -- dwarf from Norse mythology
	},
	--[[
	SettlementNames = {
		"Dwarven Doors", -- from Battle for Wesnoth
		"Kal Kartha", -- from Battle for Wesnoth: The Hammer of Thursagan
		"Knalga", -- from Battle for Wesnoth
		"Lyr"
	},
	--]]
	ShipNames = {
--		"Skidbladnir" -- ship built by dwarves in Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 101.
	},
	HistoricalUpgrades = {
		-3000, "upgrade-wood-plow", true, -- give plow technology to the dwarven factions
		-1, "upgrade-dwarven-broad-axe", true, -- bronze age technologies had already been obtained by the dwarves by this point
		-1, "upgrade-dwarven-shield-1", true, -- bronze age technologies had already been obtained by the dwarves by this point
		-1, "upgrade-dwarven-sharp-throwing-axe", true, -- bronze age technologies had already been obtained by the dwarves by this point
		25, "upgrade-masonry", true, -- dwarves already had castles built of stone masonry by then
		25, "upgrade_gunpowder", true, -- dwarves already had gunpowder by then (as seen by them having thunderes in The Sceptre of Fire)
		400, "upgrade-dwarven-coinage", true, -- the dwarves should already have Coinage technology by then
		550, "upgrade_ironworking", true,
		550, "upgrade-dwarven-great-axe", true, -- late iron age technologies already obtained by the dwarves by this point
		550, "upgrade-dwarven-shield-2", true, -- late iron age technologies already obtained by the dwarves by this point
		550, "upgrade-dwarven-bearded-throwing-axe", true, -- late iron age technologies already obtained by the dwarves by this point
		550, "upgrade-dwarven-ballista-bolt-1", true -- late iron age technologies already obtained by the dwarves by this point
	}
})

DefineCivilization("ettin", {
	Display = "Ettin",
	Visible = true,
	Species = "ettin",
	ParentCivilization = "neutral",
--	Language = "ettin",
	Adjective = "Ettin",
	Playable = false,
	DefaultColor = "black",
	CivilizationUpgrade = "upgrade-ettin-civilization",
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-goblin-wooden-shield",
		"attack", "icon-dwarven-battle-axe",
		"patrol", "icon-goblin-patrol-land",
		"stand-ground", "icon-goblin-stand-ground",
		"return-goods", "icon-goblin-return-goods"
	},
	UIFillers = {
		"interface/dwarven/filler_bottom.png", 380, -181,
		"interface/dwarven/resource.png", 0, 0,
		"interface/dwarven/buttonpanel.png", -256, -200,
		"interface/dwarven/infopanel.png", 0, -200
	},
	Description = "The ettins of Jotunheim are an extremely ancient race. They possess deep knowledge of mystic forces, passed on by their sages from generation to generation. Ettins often lord over the smaller and weaker peoples of their world, such as orcs and ogres.",
--	Description = "The ettins of Jotunheim are one of the most ancient sentient peoples to have existed. They possess deep knowledge of mystic forces, passed on by their sages from generation to generation. One of their mystics once discovered another plane of existence - Asgard - during a trance. They sought more and more knowledge about those strange lands, until they were able to construct a massive portal leading to the new realm. There they found a group of powerful beings, and soon hostilities erupted between them and the invaders. Though few in number, with their sword and sorcery each of the Asgardians slew scores of ettins. The invasion ended in disaster. Those remaining of the gigantic creatures squirreled towards the portal, as the Asgardians used their powers to destroy it.\n\nDespite the failure of their campaign, the ettins had made a phenomenal advance in their mystic knowledge. Their portal had been destroyed, but the ability to create a new one was now theirs - forever. And as their magic wisdom and their martial prowess grew, they would eventually bring forth heroes capable of taking on the Asgardians.",
	PersonalNames = {
		"female", "Angrboda", -- "Angrboða"; giantess from Norse mythology who had children with Loki; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 239; Source: Carolyne Larrington, "The Norse Myths: A Guide to the Gods and Heroes", 2017, p. 78.
		"female", "Bestla", -- giantess from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 240.
		"female", "Gjalp", -- giantess from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 243.
		"female", "Greip", -- giantess from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 243.
		"female", "Gunnlod", -- giantess from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 244.
		"female", "Hyndla", -- giantess from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 245.
		"female", "Hyrrokin", -- giantess from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 245.
		"female", "Jarnsaxa", -- giantess from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 246.
		"female", "Laufey", -- giantess from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 246.
		"female", "Menglad", -- giantess from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 122-123.
		"female", "Thokk", -- giantess from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 251.
		"male", "Baugi", -- giant from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 240.
		"male", "Bergelmir", -- giant from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 240.
		"male", "Farbauti", -- giant from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 241.
		"male", "Fjolsvid", -- giant from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 122, 242.
		"male", "Gilling", -- giant from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 243.
		"male", "Hugi", -- giant from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 245.
		"male", "Logi", -- giant from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 246.
		"male", "Narvi", -- giant from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 248.
		"male", "Skrymir", -- giant from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 250.
		"male", "Surt", -- giant from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 250.
		"male", "Suttung", -- giant from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 250.
		"male", "Vafthrudnir" -- giant from Norse mythology; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 252.
	},
	--[[
	SettlementNames = {
		"Hnitbjorg", -- mountain
		"Lyfjaberg", -- hill
		"Utgard"
	},
	--]]
	ShipNames = {
		"Naglfar" -- ship of the giants in Norse mythology, whose helmsman is Hrym; made of dead men's nails; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 21.
	}
})

DefineCivilization("germanic", {
	Display = "Germanic",
	Visible = true,
	Species = "human",
	ParentCivilization = "neutral",
	Language = "proto-germanic",
	Interface = "germanic",
	Adjective = "Germanic",
	DefaultColor = "orange",
	Calendar = "anglo_saxon_calendar",
	CivilizationUpgrade = "upgrade-germanic-civilization",
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-germanic-wooden-oblong-shield",
		"attack", "icon-germanic-short-sword",
		"patrol", "icon-germanic-patrol-land",
		"stand-ground", "icon-germanic-stand-ground",
		"return-goods", "icon-germanic-return-goods"
	},
	UIFillers = {
		"interface/germanic/filler_bottom.png", 380, -181,
		"interface/germanic/resource.png", 0, 0,
		"interface/germanic/buttonpanel.png", -256, -200,
		"interface/germanic/infopanel.png", 0, -200
	},
	Description = "During the late Stone Age, Indo-Europeans migrated from the Pontic steppes to a number of areas in Europe and beyond, displacing, mixing with, and assimilating previous populations. Those who migrated to Scandinavia spoke their own dialect of Indo-European, which eventually would develop into Germanic. Contact with the Celtic peoples to their south was beneficial to the Germanics, as they were able to incorporate more advanced techniques from Central Europe in areas such as metalworking.",
	PersonalNames = {
		"female", "Ammon", -- Proto-Germanic rendering of "Amma", Karl's mother in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 21.
		"female", "Moder", -- Proto-Germanic rendering of "Mothir", Jarl's mother in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 22.
		"male", "Aban", -- Proto-Germanic rendering of "Afi", Karl's (presumed) father in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 21; Source: Guus Kroonen, "Etymological Dictionary of Proto-Germanic", 2013, p. 1.
		"male", "Fader", -- Proto-Germanic rendering of "Fathir", Jarl's (presumed) father in the Song of Rig; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, p. 22.
		"male", "Godagaz", -- correct?
		"male", "Hadulaikaz", -- correct?
		"male", "Hagustaldaz", -- correct?
		"male", "Hlewagastiz", -- Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 1.2.
		"male", "Holtagastiz", -- correct?
		"male", "Theudariks", -- correct?
		"male", "Wagigaz", -- correct?
		"male", "Wiwaz", -- correct?
		"male", "Woduridaz" -- correct?
	},
	ProvinceNames = {
		"Ansulanda", -- rendering of "Asaland" in Proto-Germanic, as in the Ynglinga saga's story Asaland is the region in "Asia" in which Odin's people (here understood as the Indo-Europeans who went on to settle Scandinavia and become speakers of Proto-Germanic) used to live until they migrated to Scandinavia; alternatively called "Asaheim"; Source: Snorri Sturlson, "Heimskringla", 1844, vol. 1, p. 217.
	},
	HistoricalUpgrades = {
		-4000, "upgrade-wood-plow", true, -- Indo-Europeans possessed plows (as indicated by the existence of a word for plow in their vocabulary); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 104.
		-- the prevalence of bronzeworking (compared to copperworking) in Scandinavia began c. 2000 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 73.
		-1100, "upgrade-germanic-bronze-shield", true, -- bronze shields found in the Danish bogs began to be made; Source: http://en.natmus.dk/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/the-bronze-age-shields/
		-1000, "upgrade-germanic-broad-sword", true -- broad bronze sword from Føllenslev; Source: http://en.natmus.dk/historical-knowledge/denmark/prehistoric-period-until-1050-ad/the-bronze-age/men-and-woman-in-the-bronze-age/
	}
})

DefineCivilization("celt", { -- has to be defined after the germanic civilization because it uses it as its parent civilization
	Display = "Celt",
	Visible = true,
	Species = "human",
	Language = "proto-celtic",
	ParentCivilization = "germanic",
	Adjective = "Celtic",
	Playable = false,
	DefaultColor = "green",
	CivilizationUpgrade = "upgrade-celtic-civilization",
	Description = "During the late Stone Age, Indo-Europeans migrated from the Pontic steppes to a number of areas in Europe and beyond, displacing, mixing with, and assimilating previous populations. One group of Indo-Europeans spoke a dialect which would later develop into the Celtic and Italic languages. Celtic peoples occupied large swathes of Europe, from France to the Middle Danube. They had trade contacts with Greeks and Romans, and warred a number of times with the latter. Eventually, most Celts would be conquered and assimilated by other peoples, leaving only small areas where Celtic languages were still spoken.",
	PersonalNames = {
		"female", "Rigantona", -- "Rīgantonā"; Proto-Celtic version of the Welsh name "Rhiannon"; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 124.
		"male", "Cassivellaunus", -- ancient Celt; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 137.
		"male", "Tigernonos", -- Proto-Celtic version of the Welsh name "Teyrnon"; means "great lord"; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 126.
		
		-- some Briton/Gaul names, so that the Celtic name list is bigger
		"male", "Ambiorix",
		"male", "Cativolcus",
		"male", "Indutiomarus"
	},
	HistoricalUpgrades = {
		-4000, "upgrade-wood-plow", true -- Indo-Europeans possessed plows (as indicated by the existence of a word for plow in their vocabulary); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 104.
		-- metalworking begins in the British Isles at c. 2500 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 54.
		-- bronzeworking begins in the British Isles at c. 2200 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 54.
		-- swords appear in the Carpathian Basin c. 1600 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 32.
		-- swords appear in the British Isles c. 1200 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 55.
	}
})

DefineCivilization("gnome", {
	Display = "Gnome",
	Visible = true,
	Species = "gnome",
	ParentCivilization = "dwarf",
	Language = "gnomish",
	Adjective = "Gnomish",
	Playable = false,
	DefaultColor = "blue",
	CivilizationUpgrade = "upgrade-gnomish-civilization",
	ButtonIcons = {
		"move", "icon-gnomish-boots",
		"attack", "icon-gnomish-thrusting-sword-1",
		"patrol", "icon-gnomish-patrol-land",
		"stand-ground", "icon-germanic-stand-ground",
		"return-goods", "icon-dwarven-return-goods"
	},
	Description = "Gnomes usually live in the hills and forests of Nidavellir, and often seek contact with nature. Although they have a different outlook on life than the dwarves, not rarely both two peoples live side by side, with gnomish minorities permeating dwarven settlements and vice-versa. These contacts have brought much benefit to both of them, both through trade and via the spread of gnomish technologies northwards.",
	PersonalNames = {
		"male", "Rubezahl"
	}
})

DefineCivilization("goblin", {
	Display = "Goblin",
	Visible = true,
	Species = "goblin",
	ParentCivilization = "neutral",
	Language = "goblin",
	Interface = "goblin",
	Adjective = "Goblin",
	DefaultColor = "teal",
	CivilizationUpgrade = "upgrade-goblin-civilization",
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-goblin-wooden-shield",
		"attack", "icon-goblin-short-sword",
		"patrol", "icon-goblin-patrol-land",
		"stand-ground", "icon-goblin-stand-ground",
		"return-goods", "icon-goblin-return-goods"
	},
	UIFillers = {
		"interface/goblin/filler_bottom.png", 380, -181,
		"interface/goblin/resource.png", 0, 0,
		"interface/goblin/buttonpanel.png", -256, -200,
		"interface/goblin/infopanel.png", 0, -200
	},
	Description = "Goblins dwell in the caves and highlands of Nidavellir. The frequency of goblin raids into dwarven and gnomish territory has fostered a history of hatred with those races. The emergence of the goblin merchant syndicates has changed this relationship, however. The goblin merchants have become an indispensable part of Nidavellir's trade network, though the dwarves and gnomes do hold grudges against their practices, specially their suspected support of piracy...",
	PersonalNames = {
		"male", "Belragor", -- invented by Jesse Crider
		"male", "Dran",
		"male", "Erdog",
		"male", "Gashnok",
		"male", "Grogor-Tuk",
		"male", "Hrugt",
		"male", "Kardur",
		"male", "Kartrog",
		"male", "Myrtos", -- invented by Jesse Crider
		"male", "Odrun",
		"male", "Orhtib",
		"male", "Ozdul",
		"male", "Panok",
		"male", "Pruol",
		"male", "Sbrak",
		"male", "Sdrul",
		"male", "Uhmit",
		"male", "Urdum",
		"male", "Utrub",
		"male", "Vrag",
		"male", "Vrunt",
		"male", "Zhuk",
		"male", "Zuzerd"
	}
})

DefineCivilization("kobold", {
	Display = "Kobold",
	Visible = true,
	Species = "kobold",
	ParentCivilization = "neutral",
	Language = "kobold",
	Adjective = "Kobold",
	Playable = false,
	DefaultColor = "violet",
	CivilizationUpgrade = "upgrade-kobold-civilization",
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-goblin-wooden-shield",
		"attack", "icon-gnomish-thrusting-sword-1",
		"patrol", "icon-goblin-patrol-land",
		"stand-ground", "icon-goblin-stand-ground",
		"return-goods", "icon-goblin-return-goods"
	},
	UIFillers = {
		"interface/goblin/filler_bottom.png", 380, -181,
		"interface/goblin/resource.png", 0, 0,
		"interface/goblin/buttonpanel.png", -256, -200,
		"interface/goblin/infopanel.png", 0, -200
	},
	Description = "Kobolds live in the deep caves of Nidavellir, and worship wyrms as sacred ancestors. They share the dwarven passion for mining and metals, but not their technological advancement. Although kobolds can be inventive, their isolation from other communities has made the spread of progress to their lands more difficult. Being the sole intelligent reptilian race in Nidavellir, they feel threatened by the presence of dwarves, gnomes and goblins - all of which they call \"breastlings\".",
	PersonalNames = {
		"Hodeke", -- Source: Jacob Grimm, "Deutsche Mythologie", pp. 392, 1049, 1080.
		"Hoidike", -- Source: Jacob Grimm, "Deutsche Mythologie", p. 392.
		"Napfhans", -- Source: Jacob Grimm, "Deutsche Mythologie", p. 393.
		"Pumphut", -- Source: Jacob Grimm, "Deutsche Mythologie", p. 1049.
		"Shellycoat", -- Source: Jacob Grimm, "Deutsche Mythologie", p. 394.
	}
})

DefineCivilization("minotaur", {
	Display = "Minotaur",
	Visible = false,
	Species = "minotaur",
	ParentCivilization = "neutral",
	Adjective = "Minotaur",
	Playable = false,
	DefaultColor = "red"
})

DefineCivilization("teuton", {
	Display = "Teuton",
	Visible = true,
	Species = "human",
	Language = "high-german",
	ParentCivilization = "germanic",
	Adjective = "Teutonic",
	DefaultColor = "yellow",
	CivilizationUpgrade = "upgrade_teutonic_civilization",
	DevelopsFrom = {"germanic"},
	Description = "During the Iron Age, Germanic peoples split off into three different groups - the North Germanics (like the Danes and Swedes), the East Germanics (like the Goths and Vandals) and the West Germanics (like the Suebi, Saxons and Franks). Eventually, West Germanic peoples would come to identify themselves with the demonym \"deutsch\", a term often latinized as \"teutonicus\".",
	UnitSounds = {
		"selected", "basic-teuton-voices-selected-group",
		"acknowledge", "basic-teuton-voices-acknowledge",
		"ready", "basic-teuton-voices-ready",
		"help", "basic-teuton-voices-help",
		"help-town", "basic-teuton-voices-help-town"
	},
	PersonalNames = {
		"female", "Hilde",
		"female", "Wilhelmina",
		"male", "Adalbert",
		"male", "Albert",
		"male", "Albrecht",
		"male", "Alexander",
		"male", "Alphart",
		"male", "Anton",
		"male", "Arnulf",
		"male", "Bernard",
		"male", "Carl",
		"male", "Christian",
		"male", "David",
		"male", "Eduard",
		"male", "Ernst",
		"male", "Fabian",
		"male", "Ferdinand",
		"male", "Franz",
		"male", "Friedrich",
		"male", "Georg",
		"male", "Gerhard",
		"male", "Gottfried",
		"male", "Gunther",
		"male", "Gustav",
		"male", "Hagen",
		"male", "Hans",
		"male", "Heinrich",
		"male", "Heinz",
		"male", "Helmut",
		"male", "Hermann",
		"male", "Hildebrand",
		"male", "Jakob",
		"male", "Johann",
		"male", "Josef",
		"male", "Joseph",
		"male", "Karl",
		"male", "Karlmann",
		"male", "Klaus",
		"male", "Kurt",
		"male", "Leopold",
		"male", "Lothar",
		"male", "Ludwig",
		"male", "Luitpold",
		"male", "Lukas",
		"male", "Manfred",
		"male", "Mark",
		"male", "Matthias",
		"male", "Maximilian",
		"male", "Michael",
		"male", "Otto",
		"male", "Paul",
		"male", "Peter",
		"male", "Philipp",
		"male", "Pippin",
		"male", "Richard",
		"male", "Rudolf",
		"male", "Siegfried",
		"male", "Theodor",
		"male", "Thomas",
		"male", "Tobias",
		"male", "Victor",
		"male", "Walter",
		"male", "Werner",
		"male", "Wilhelm",
		"male", "Wolfgang",
		"male", "Wolfhart"
	},
	FamilyNames = {
		"Muhlhausen" -- "Mühlhausen"; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 104.
	},
	--[[
	SettlementNames = {
		"Altsohl",
		"Blumenau",
		"Botzen",
		"Braunau",
		"Bregenz",
		"Chlum",
		"Darmstadt",
		"Eger",
		"Eisenerz",
		"Eisenstadt",
		"Erfurt",
		"Franzensfeste",
		"Freistadt",
		"Friedeburg",
		"Frohsdorf",
		"Fünfkirchen",
		"Fürstenfeld",
		"Gabel",
		"Ganserndorf", -- "Gänserndorf"
		"Glurns",
		"Hals",
		"Halsbrücke",
		"Halsdorf",
		"Hartberg",
		"Heiligenstadt",
		"Horn",
		"Hühnerwasser",
		"Ischl",
		"Josefstadt",
		"Kaiserslautern",
		"Karlsbad",
		"Klausenburg",
		"Klosterneuburg",
		"Kolberg",
		"Königgrätz",
		"Königinhof",
		"Krems",
		"Kremsier",
		"Kreuztal",
		"Kronstadt",
		"Kufstein",
		"Lemberg",
		"Leopoldstadt",
		"Luxemburg",
		"Mannheim",
		"Marburg",
		"Meisenheim",
		"Mühlenbach",
		"München",
		"Münchengrätz",
		"Neue Sorge",
		"Neunkirchen",
		"Neusatz", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 168.
		"Neusohl",
		"Neusorge",
		"Neustadt",
		"Nikolsburg",
		"Ödenburg",
		"Pilsen",
		"Rosenheim",
		"Sadowa",
		"Schässburg",
		"Schweinschädel",
		"Sorge",
		"Spielberg",
		"Steinamanger",
		"Stuhlweissenburg",
		"Stuttgart",
		"Teplitz",
		"Teschen",
		"Tobitschau",
		"Torfhaus",
		"Trent",
		"Troppau",
		"Weisskirchen",
		"Wels",
		"Werschitz",
		"Wolfsberg",
		"Wolfsburg",
		"Würzburg",
		"Zillertal",
		"Zweibrücken"
	},
	--]]
	ProvinceNames = {
		"Altmark", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 134-135.
		"Burgenland",
		"Holstein",
		"Mittelmark", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 134-135.
		"Neumark", -- Source: William R. Shepherd, "Historical Atlas", 1911, pp. 134-135.
		"Nordgau",
		"Ostmark",
		"Pomerania",
		"Schlesien",
		"Schleswig",
		"Siebenbürgen",
		"Styria", -- "Steiermark"
		"Tyrol", -- "Tirol"
		"Vorarlberg" 
	},
	ShipNames = {
		-- Austrian ship names
		"Achilles", -- steamship; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 38.
		"Adler", -- imperial yacht; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 30.
		"Banhans", -- steamship; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 38.
		"Bodrog", -- river monitor; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 34.
		"Enns", -- river monitor; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 35.
		"Erzherzog Albrecht", -- steam warship; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 30.
		"Erzherzog Franz Ferdinand", -- hospital ship; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 38.
		"Franz I.", -- steamship; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", pp. 28-29.
		"Koros", -- "Körös"; river monitor; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", pp. 33-34.
		"Kulpa", -- hospital ship; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 38.
		"Leitha", -- river monitor; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", pp. 32-33.
		"Maros", -- river monitor; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", pp. 32-33.
		"Schlick", -- steam warship; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 30.
		"Szamos", -- river monitor; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", pp. 33-34.
		"Temes", -- river monitor; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 34.
		"Traisen", -- hospital ship; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 38.
		"Traun" -- steamship; Source: Peter Schubert, "Krieg auf der Donau: Die Geschichte der k.u.k. Donauflotille", p. 38.
	},
	HistoricalUpgrades = {
		-500, "upgrade_ironworking", true,
		-500, "upgrade-teuton-iron-shield", true,
		180, "upgrade-teuton-spatha", true, -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
		800, "upgrade-writing", true,
		800, "upgrade-masonry", true,
		919, "upgrade-deity-christian-god", true, -- the Holy Roman Empire was in existence in 919 AD; Source: William R. Shepherd, "Historical Atlas", 1911, pp. 62-63.
		1249, "upgrade_gunpowder", true -- the Englishman Roger Bacon wrote about gunpowder in 1249; Source: Isaac Asimov, "Cronologia das Ciências e das Descobertas", 1993, pp. 169-170.
	}
})

DefineCivilization("anglo-saxon", {
	Display = "Anglo-Saxon",
	Visible = true,
	Species = "human",
	Language = "old-english",
	ParentCivilization = "teuton",
	Adjective = "Anglo-Saxon",
	DefaultColor = "red",
	Calendar = "anglo_saxon_calendar",
	Currency = "scilling",
	CivilizationUpgrade = "upgrade-anglo-saxon-civilization",
	DevelopsFrom = {"germanic"},
	Description = "When the Angles, Saxons and Jutes migrated to the British Isles, they intermingled and gave rise to a new people - the Anglo-Saxons. Conquering vast swathes of land, they founded seven kingdoms who vied with each other for supremacy. For a time, Anglo-Saxon scholarship was one of the most sophisticated in Europe, and their learned men were invited to the most powerful courts on the Continent.",
	UnitSounds = {
		"selected", "basic-english-voices-selected-group",
		"acknowledge", "basic-english-voices-acknowledge",
		"ready", "basic-english-voices-ready",
		"help", "basic-english-voices-help",
		"help-town", "basic-english-voices-help-town"
	},
	HistoricalUpgrades = {
		180, "upgrade-teuton-spatha", true, -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
		664, "upgrade-deity-christian-god", true -- Christianity was predominant in England in 664; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 128.
	},
	--[[
	SettlementNames = {
		"Abbandun",  -- Old English name of Abingdon; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Abbodesbyrig", -- Old English name of Abbotsbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p.
		"Aegelesburg", -- "Ægelesburg"; Old English name of Aylesbury; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Aegelesford", -- "Ægelesford"; Old English name of Aylesford; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Alre", -- Old English name of Aller; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Andeferas", -- Old English name of Andover; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Apuldre", -- Old English name of Appledore; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Assandun", -- Old English name of Ashingdon; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Badecanwiellon", -- Old English name of Bakewell; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Baddanbyrig", -- Old English name of the Badbury Rings; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Baenesingtun", -- "Bænesingtun"; Old English name of Bensington; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bancornaburg", -- Old English name of Bangor on Dee; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Bardanstapol", -- Old English name of Barnstaple; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Basengum", -- Old English name of Basing; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Beamfleot", -- Old English name of Benfleet; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 731.
		"Gumeninga Hearh" -- Old English name of Harrow on the Hill; the name means "the holy place of the Gumeningas"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
	},
	--]]
	UnitClassNames = {
		"farm", "Wedone", -- Old English field-name; Wedone was near the location of Damerham; the first part of the name is formed by a variant of the Old English word "weoh"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
		"farm", "Weoland" -- Old English field-name; Weoland was near the location of Wootton Bassett; the first part of the name is formed by a variant of the Old English word "weoh"; Source: Frank Stenton, "Anglo-Saxon England", 1971, p. 101.
	}
})

DefineCivilization("english", {
	Display = "English",
	Visible = true,
	Species = "human",
	Language = "english",
	ParentCivilization = "anglo-saxon",
	Adjective = "English",
	DefaultColor = "red",
	CivilizationUpgrade = "upgrade-english-civilization",
	DevelopsFrom = {"anglo-saxon"},
	UnitSounds = {
		"selected", "basic-english-voices-selected-group",
		"acknowledge", "basic-english-voices-acknowledge",
		"ready", "basic-english-voices-ready",
		"help", "basic-english-voices-help",
		"help-town", "basic-english-voices-help-town"
	},
	HistoricalUpgrades = {
		1180, "upgrade-compass", true, -- the English scholar Alexander Neckam (1157-1217) wrote about the uses of magnetism for ascertaining the north/south direction in 1180; Source: Isaac Asimov, "Cronologia das Ciências e das Descobertas", 1993, pp. 164-165.
		1249, "upgrade_gunpowder", true -- the Englishman Roger Bacon wrote about gunpowder in 1249; Source: Isaac Asimov, "Cronologia das Ciências e das Descobertas", 1993, pp. 169-170.
	},
	PersonalNames = {
		"male", "Albert",
		"male", "Anthony",
		"male", "Bernard",
		"male", "Charles",
		"male", "Edward",
		"male", "Francis",
		"male", "Frederick",
		"male", "George",
		"male", "Henry",
		"male", "John",
		"male", "Joseph",
		"male", "Lewis",
		"male", "Paul",
		"male", "Peter",
		"male", "Theodore",
		"male", "William"
	},
	--[[
	SettlementNames = {
		"Ashford", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Bedford", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Blackburn", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Blackpool", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Blackwall",
		"Chatham",
		"Chesterfield",
		"Dartford",
		"Dartmouth",
		"Falmouth",
		"Fishguard", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Gateshead", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Greenwich",
		"Guildford", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Harrow on the Hill",
		"Hempstead", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Holyhead",
		"Hull", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
		"Huntingdon",
		"Kirkwall", -- in Scotland
		"Liverpool", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Longford", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Maidstone", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Mansfield",
		"Marshfield",
		"Newbury", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Newcastle", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
		"Newhaven", -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
		"Newport", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Newquay", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Northfleet",
		"Norwich",
		"Oldham",
		"Oxford", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Plymouth",
		"Portsmouth",
		"Redditch", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Scarborough",
		"Shrewsbury", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Stockport", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Stonehaven", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Swanscombe",
		"Swansea", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Torbay", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Wells",
		"Westbury",
		"Westport",
		"Whitehaven", -- Source: "Philip's International School Atlas", 2006, p. 64.
		"Wimbledon",
		"Woodbridge",
		"Woolwich",
		"Wormshill",
		"Yarmouth" -- Source: William R. Shepherd, "Historical Atlas", 1911, p. 185.
	},
	--]]
	ProvinceNames = {
		"Berkshire",
		"Cheshire",
		"Cornwall",
		"Dorset",
		"East Anglia",
		"Essex",
		"Hampshire",
		"Lancashire",
		"Middlesex",
		"Norfolk",
		"Northumberland",
		"Portland", -- duchy
		"Shropshire",
		"Somerset",
		"Suffolk",
		"Sussex",
		"Wiltshire"
	},
	UnitClassNames = {
		"farm", "Blackfield",
		"farm", "Blackgarden",
		"farm", "Brownfield",
		"farm", "Browngarden",
		"farm", "Greengarden",
		"farm", "Greenfield",
		"farm", "Lushfield",
		"farm", "Newfield",
		"farm", "Newgarden",
		"farm", "Oldfield",
		"farm", "Oldgarden",
		"farm", "Redfield",
		"farm", "Redgarden",
		"farm", "Stonefield",
		"farm", "Stonegarden",
		"farm", "Whitefield",
		"farm", "Whitegarden"
	}
})

DefineCivilization("frankish", {
	Display = "Frankish",
	Visible = true,
	Species = "human",
	Language = "old-frankish",
	ParentCivilization = "teuton",
	Adjective = "Frankish",
	DefaultColor = "black",
	CivilizationUpgrade = "upgrade-frankish-civilization",
	DevelopsFrom = {"germanic"},
	Description = "The Franks are one of the most powerful Germanic tribes to have existed. From their humble beginnings in their dwellings along the Rhine, they eventually managed to conquer the entirety of Gaul and much of Central Europe.",
	UnitSounds = {
		"selected", "basic-germanic-voices-selected-group",
		"acknowledge", "basic-germanic-voices-acknowledge",
--		"attack", "basic-germanic-voices-attack",
		"ready", "basic-germanic-voices-ready",
		"help", "basic-germanic-voices-help",
		"help-town", "basic-germanic-voices-help-town"
	},
	HistoricalUpgrades = {
		180, "upgrade-teuton-spatha", true -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	},
	PersonalNames = {
		"male", "Answald", -- Old Frankish name; Source: http://www.cnrtl.fr/definition/lourdaud//1
		"male", "Grimwald" -- Old Frankish name; Source: http://www.cnrtl.fr/definition/lourdaud//1
	},
	--[[
	SettlementNames = {
		"Haim" -- the French settlement names "Le Hamel", "Hamelet", "Hamelin" and "Hem" come from or have the same origin as the Old French "ham", which in turn comes from Old Frankish "haim"; Source: http://www.cnrtl.fr/definition/hameau
	},
	--]]
	UIFillers = {
		"dlcs/frankish_faction_flair/graphics/ui/filler_bottom.png", 380, -181,
		"interface/germanic/resource.png", 0, 0,
		"dlcs/frankish_faction_flair/graphics/ui/buttonpanel.png", -256, -200,
		"dlcs/frankish_faction_flair/graphics/ui/infopanel.png", 0, -200
	}
})

DefineCivilization("suebi", {
	Display = "Suebi",
	Visible = true,
	Species = "human",
	Language = "old-high-german",
	ParentCivilization = "teuton",
	Adjective = "Suebi",
	DefaultColor = "black",
	CivilizationUpgrade = "upgrade-suebi-civilization",
	DevelopsFrom = {"germanic"},
	Description = "The Suebi were a powerful tribe in ancient Germania, battling the Romans a number of times. From the Suebi tribes such as the Marcomanni and the Quadi would originate. In the 5th century a group of Suebi settled and conquered Galicia, establishing a kingdom there.",
	UnitSounds = {
		"selected", "basic-germanic-voices-selected-group",
		"acknowledge", "basic-germanic-voices-acknowledge",
--		"attack", "basic-germanic-voices-attack",
		"ready", "basic-germanic-voices-ready",
		"help", "basic-germanic-voices-help",
		"help-town", "basic-germanic-voices-help-town"
	},
	HistoricalUpgrades = {
		180, "upgrade-teuton-spatha", true -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineCivilization("gaul", {
	Display = "Gaul",
	Visible = false,
	Species = "human",
	Language = "gaulish",
	ParentCivilization = "teuton", -- so that it can use Teuton buildings/units
	Adjective = "Gaul",
	Playable = false,
	DefaultColor = "black",
	HistoricalUpgrades = {
		-- swords appear in the Carpathian Basin c. 1600 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 32.
	}
})

DefineCivilization("briton", {
	Display = "Briton",
	Visible = false,
	Species = "human",
	Language = "british",
	ParentCivilization = "teuton", -- so that it can use Teuton buildings/units
	Adjective = "Briton",
	Playable = false,
	DefaultColor = "red",
	PersonalNames = {
		"male", "Cassivellaunus", -- ancient Celt; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 137.
	},
	--[[
	SettlementNames = {
		"Moridunum" -- the modern Carmarthen; main settlement of the Demetae (ancient Briton people); Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	},
	--]]
	ProvinceNames = {
		"Demetia", -- land of the Demetae, an ancient Briton people; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	},
	HistoricalUpgrades = {
		-- metalworking begins in the British Isles at c. 2500 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 54.
		-- bronzeworking begins in the British Isles at c. 2200 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 54.
		-- swords appear in the British Isles c. 1200 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 55.
	}
})

DefineCivilization("welsh", {
	Display = "Welsh",
	Visible = false,
	Species = "human",
	Language = "welsh",
	ParentCivilization = "briton",
	Adjective = "Welsh",
	Playable = false,
	DefaultColor = "green",
	PersonalNames = {
		"female", "Aranrhod", -- daughter of Dôn; Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 143.
		"female", "Branwen", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 130.
		"female", "Penarddun", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 132.
		"male", "Beli", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 132.
		"male", "Bendigeidfran", -- Welsh name; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 130.
		"male", "Caradawg", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 135.
		"male", "Caswallawn", -- Welsh; son of Beli; equated in the Middle Ages with the Cassivellaunus of antiquity; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 137.
		"male", "Cawrdaf", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 135.
		"male", "Euroswydd", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 131.
		"male", "Gofannon", -- Welsh; the name derives from that of an ancient Celtic deity, Gobannonos; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 143-144.
		"male", "Gwydion", -- Welsh; son of Dôn; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 142.
		"male", "Llyr", -- "Llŷr"; Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 131.
		"male", "Llywelyn", -- Llywelyn ap Gruffudd, Welsh prince; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 131.
		"male", "Madog", -- Madog ap Maredudd, last ruler of Powys; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 142.
		"male", "Manawydan", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 131.
		"male", "Mynogan", -- Welsh; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 132.
		"male", "Teyrnon" -- Welsh name; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 126.
	},
	--[[
	SettlementNames = {
		"Aber Menei", -- port near Caernarfon; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 134.
		"Aberffraw", -- most important residence of the prince of Gwynedd, located in the southwest of the island of Anglesey; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 133.
		"Arberth", -- settlement in Dyfed (Wales), perhaps the modern Narberth; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Caer Dathyl", -- possibly the iron age hill fort Tre'r Ceiri; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 72, 142.
		"Caer Seint", -- the modern Caernarfon and the Roman Segontium; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 135.
		"Harddlech", -- settlement in the Welsh region of Ardudwy; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 131.
		"Pen Llwyn Diarwya" -- settlement in Dyfed (Wales); Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 118.
	},
	--]]
	ProvinceNames = {
		"Ardudwy", -- Welsh region; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 131.
		"Arfon",  -- cantref (administrative division) of Gwynedd; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 142.
		"Bychan",  -- cantref (administrative division) of Ystrad Tywi; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 128-129.
		"Cemais", -- cantref (administrative division) of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Deugledyff", -- cantref (administrative division) of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Eginog",  -- cantref (administrative division) of Ystrad Tywi; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 128-129.
		"Emlyn", -- cantref (administrative division) of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Gwarthaf", -- cantref (administrative division) of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Mawr",  -- cantref (administrative division) of Ystrad Tywi; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, pp. 128-129.
		"Pebidiog", -- cantref (administrative division) of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Penfro", -- cantref (administrative division) of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
		"Rhos" -- cantref (administrative division) of Dyfed; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 117.
	}
})

DefineCivilization("gael", {
	Display = "Gael",
	Visible = false,
	Species = "human",
	Language = "irish",
	ParentCivilization = "teuton", -- so that it can use Teuton buildings/units
	Adjective = "Gael",
	Playable = false,
	DefaultColor = "green",
	HistoricalUpgrades = {
		-- metalworking begins in the British Isles at c. 2500 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 54.
		-- bronzeworking begins in the British Isles at c. 2200 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 54.
		-- swords appear in the British Isles c. 1200 BC; Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 2, p. 55.
	}
})

DefineCivilization("ogre", {
	Display = "Ogre",
	Visible = false,
	Species = "ogre",
	ParentCivilization = "orc",
	Adjective = "Ogre",
	Playable = false,
	DefaultColor = "red",
	PersonalNames = {
		"male", "Akoark", -- from Battle for Wesnoth
		"male", "Akort", -- from Battle for Wesnoth
		"male", "Akzalk", -- from Battle for Wesnoth
		"male", "Arkarm", -- from Battle for Wesnoth
		"male", "Barkuk", -- from Battle for Wesnoth
		"male", "Blokkar", -- from Battle for Wesnoth
		"male", "Borkuk", -- from Battle for Wesnoth
		"male", "Bukkak", -- from Battle for Wesnoth
		"male", "Bulruk", -- from Battle for Wesnoth
		"male", "Corkkar", -- from Battle for Wesnoth
		"male", "Delkkak", -- from Battle for Wesnoth
		"male", "Garkuk", -- from Battle for Wesnoth
		"male", "Gnukk", -- from Battle for Wesnoth
		"male", "Goruk", -- from Battle for Wesnoth
		"male", "Grak", -- from Battle for Wesnoth
		"male", "Gurk", -- from Battle for Wesnoth
		"male", "Gurm", -- from Battle for Wesnoth
		"male", "Kalknix", -- from Battle for Wesnoth
		"male", "Karak", -- from Battle for Wesnoth
		"male", "Karbuk", -- from Battle for Wesnoth
		"male", "Kargnak", -- from Battle for Wesnoth
		"male", "Karterak", -- from Battle for Wesnoth
		"male", "Kayrak", -- from Battle for Wesnoth
		"male", "Kelkrar", -- from Battle for Wesnoth
		"male", "Kerta", -- from Battle for Wesnoth
		"male", "Kilkrar", -- from Battle for Wesnoth
		"male", "Kingrok", -- from Battle for Wesnoth
		"male", "Kirk", -- from Battle for Wesnoth
		"male", "Klud", -- from Battle for Wesnoth
		"male", "Kokkan", -- from Battle for Wesnoth
		"male", "Kolk", -- from Battle for Wesnoth
		"male", "Komak", -- from Battle for Wesnoth
		"male", "Korgnak", -- from Battle for Wesnoth
		"male", "Kork", -- from Battle for Wesnoth
		"male", "Koruck", -- from Battle for Wesnoth
		"male", "Kramak", -- from Battle for Wesnoth
		"male", "Krog", -- from Battle for Wesnoth
		"male", "Krukrak", -- from Battle for Wesnoth
		"male", "Krumuk", -- from Battle for Wesnoth
		"male", "Kuknuk", -- from Battle for Wesnoth
		"male", "Kurkur", -- from Battle for Wesnoth
		"male", "Kurmak", -- from Battle for Wesnoth
		"male", "Makron", -- from Battle for Wesnoth
		"male", "Markaak", -- from Battle for Wesnoth
		"male", "Markuk", -- from Battle for Wesnoth
		"male", "Merknik", -- from Battle for Wesnoth
		"male", "Nargak", -- from Battle for Wesnoth
		"male", "Olk", -- from Battle for Wesnoth
		"male", "Orkut", -- from Battle for Wesnoth
		"male", "Reknak", -- from Battle for Wesnoth
		"male", "Takolak", -- from Battle for Wesnoth
		"male", "Trabuk", -- from Battle for Wesnoth
		"male", "Trakkon", -- from Battle for Wesnoth
		"male", "Urkar", -- from Battle for Wesnoth
		"male", "Urkark" -- from Battle for Wesnoth
	}
})

DefineCivilization("latin", {
	Display = "Latin",
	Visible = true,
	Species = "human",
	Language = "latin",
	ParentCivilization = "teuton",
	Adjective = "Latin",
	Playable = false,
	DefaultColor = "red",
	CivilizationUpgrade = "upgrade-latin-civilization",
	Description = "During the late Stone Age, Indo-Europeans migrated from the Pontic steppes to a number of areas in Europe and beyond, displacing, mixing with, and assimilating previous populations. One group of Indo-Europeans spoke a dialect which would later develop into the Celtic and Italic languages. Latins were an Italic people who inhabited Central Italy and who founded many cities, one of them being Rome. With the expansion of consolidation of Roman power, most of Italy would be latinized, and eventually large areas of the Roman empire would speak Latin as their mother tongue.",
	UnitSounds = {
		"selected", "basic-latin-voices-selected-group",
		"acknowledge", "basic-latin-voices-acknowledge",
		"attack", "basic-latin-voices-attack",
		"build", "basic-latin-voices-build",
		"repair", "basic-latin-voices-repair",
		"harvest", "copper", "basic-latin-voices-harvest",
		"harvest", "silver", "basic-latin-voices-harvest",
		"harvest", "gold", "basic-latin-voices-harvest",
		"harvest", "iron", "basic-latin-voices-harvest",
		"harvest", "mithril", "basic-latin-voices-harvest",
		"harvest", "lumber", "basic-latin-voices-harvest",
		"harvest", "stone", "basic-latin-voices-harvest",
		"harvest", "limestone", "basic-latin-voices-harvest",
		"harvest", "coal", "basic-latin-voices-harvest",
		"harvest", "jewelry", "basic-latin-voices-harvest",
		"harvest", "furniture", "basic-latin-voices-harvest",
		"harvest", "leather", "basic-latin-voices-harvest",
		"harvest", "diamonds", "basic-latin-voices-harvest",
		"harvest", "emeralds", "basic-latin-voices-harvest",
		"ready", "basic-latin-voices-ready",
		"help", "basic-english-voices-help",
		"help-town", "basic-english-voices-help-town"
	},
	HistoricalUpgrades = {
		-4000, "upgrade-wood-plow", true, -- Indo-Europeans possessed plows (as indicated by the existence of a word for plow in their vocabulary); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 104.
	},
	PersonalNames = {
		"female", "Faustina", -- daughter of Emperor Antoninus Pius who married Marcus Aurelius; Source: "Ancient Warfare VII.6", 2013, pp. 6, 8.
		"male", "Antoninus", -- Antoninus Pius, Roman emperor; Source: "Ancient Warfare VII.6", 2013, p. 6.
		"male", "Attidius", -- Attidius Cornelianus, Roman governor of Syria; Source: "Ancient Warfare VII.6", 2013, p. 7.
		"male", "Avitus", -- Archbishop Avitus of Vienne; corresponded with the Burgundian king Sigismund c. 494-523, and was his chief advisor; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 99.
		"male", "Commodus", -- son of Marcus Aurelius and Faustina, succeeded his father as Roman emperor; Source: "Ancient Warfare VII.6", 2013, p. 6.
		"male", "Leo", -- Eastern Roman emperor who renounced the treaty with the Ostrogoths; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6.
		"male", "Marcianus", -- source gives "Marcian"; Eastern Roman emperor who concluded a treaty with the Ostrogothic king Walamer after he had become independent in 453 AD, with the Ostrogoths providing protection of the frontier while the Romans gave them a subsidy; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 6.
		"male", "Seneca", -- philosopher, of the school of Roman Stoicism; Source: "Ancient Warfare VII.6", 2013, p. 9.
		"male", "Severianus", -- governor of Armenia; Source: "Ancient Warfare VII.6", 2013, p. 7.
		"male", "Sidonius", -- Sidonius Apollinaris, Gallo-Roman writer; Source: Norman Davies, "Vanished Kingdoms", 2012, p. 96.
		"male", "Zeno" -- Eastern Roman Emperor; was emperor by 480; Source: F. E. Sandbach, "The Heroic Saga-Cycle of Dietrich of Bern", 1906, p. 7.
	},
	--[[
	SettlementNames = {
		"Agrigentum",
		"Alba",
		"Antium",
		"Ardea",
		"Arretium",
		"Beneventum",
		"Bracara Augusta", -- Braga
		"Buxentum",
		"Caesaraugusta",
		"Capua",
		"Circeii",
		"Clusium",
		"Corfinium",
		"Cora",
		"Croton",
		"Cumae",
		"Emporium",
		"Fregellae",
		"Fregena",
		"Fyrgi",
		"Genua", -- Genoa
		"Heraclea",
		"Locri",
		"Luceria",
		"Lucus Augusti",
		"Mariana",
		"Minturnae",
		"Narnia",
		"Nora",
		"Norba",
		"Olbia",
		"Ostia",
		"Puteoli",
		"Rhegium",
		"Salernum",
		"Salicula",
		"Satricum",
		"Segontium", -- Roman fortress, located where the modern Caernarfon is; Source: Bernhard Maier (trans.), "Das Sagenbuch der Walisischen Kelten", 1999, p. 135.
		"Setia",
		"Signia",
		"Sinuessa",
		"Sora",
		"Sulci",
		"Sutrium",
		"Sybaris",
		"Tarentum",
		"Tarracina",
		"Thurii",
		"Turnis Libisonis",
		"Usellis",
		"Velitrae",
		"Venusia",
		"Vibo Valentia",
		"Vulturnus"
	}
	--]]
})

DefineCivilization("castillian", {
	Display = "Castillian",
	Visible = false,
	Species = "human",
	ParentCivilization = "latin",
	Adjective = "Castillian",
	Playable = false
})

DefineCivilization("french", {
	Display = "French",
	Visible = false,
	Species = "human",
	ParentCivilization = "latin",
	Adjective = "French",
	Playable = false,
	PersonalNames = {
		"male", "Bellaud", -- Source: http://www.cnrtl.fr/definition/lourdaud//1
		"male", "Bonnaud", -- Source: http://www.cnrtl.fr/definition/lourdaud//1
		"male", "Renaud" -- Source: http://www.cnrtl.fr/definition/lourdaud//1
	},
	--[[
	SettlementNames = {
		"Hamelet", -- Source: http://www.cnrtl.fr/definition/hameau
		"Hamelin", -- Source: http://www.cnrtl.fr/definition/hameau
		"Hem", -- Source: http://www.cnrtl.fr/definition/hameau
		"Le Hamel", -- Source: http://www.cnrtl.fr/definition/hameau
		"Luxembourg"
	}
	--]]
})

DefineCivilization("italian", {
	Display = "Italian",
	Visible = false,
	Species = "human",
	ParentCivilization = "latin",
	Adjective = "Italian",
	Playable = false,
	PersonalNames = {
		"male", "Alessandro",
		"male", "Giovanni"
	}
})

DefineCivilization("portuguese", {
	Display = "Portuguese",
	Visible = false,
	Species = "human",
	ParentCivilization = "latin",
	Adjective = "Portuguese",
	Playable = false,
	UnitClassNames = {
		"farm", "Macacos" -- farm in Rio de Janeiro; Source: Elisabeth von der Weid, "O bonde como elemento de expansão urbana no Rio de Janeiro", p. 13.
	}
})

DefineCivilization("romanian", {
	Display = "Romanian",
	Visible = false,
	Species = "human",
	ParentCivilization = "latin",
	Adjective = "Romanian",
	Playable = false
})

DefineCivilization("basque", { -- represents not only the speakers of Vasconic languages, but also various pre-Indo-European cultures
	Display = "Basque",
	Visible = false,
	Species = "human",
	Language = "basque",
	ParentCivilization = "germanic",
	Adjective = "Basque",
	Playable = false
})

DefineCivilization("etruscan", {
	Display = "Etruscan",
	Visible = false,
	Species = "human",
	Language = "etruscan",
	ParentCivilization = "latin",
	Adjective = "Etruscan",
	Playable = false,
	HistoricalUpgrades = {
		-750, "upgrade-architecture", true -- the usage of an arch in construction was first properly developed by the Etruscans c. 750 BC; Source: Isaac Asimov, "Cronologia das Ciências e das Descobertas", 1993, pp. 93-94.
	}
})

DefineCivilization("goth", {
	Display = "Goth",
	Visible = true,
	Species = "human",
	Language = "gothic",
	ParentCivilization = "teuton",
	Adjective = "Gothic",
	CivilizationUpgrade = "upgrade-gothic-civilization",
	DevelopsFrom = {"germanic"},
	Currency = "tremissis",
	Description = "During the Iron Age, Germanic peoples split off into three different groups - the North Germanics (like the Danes and Swedes), the East Germanics (like the Goths and Vandals) and the West Germanics (like the Suebi, Saxons and Franks). The Goths and the Vandals played an important role in the wars and migrations of late antiquity, and apportioned a part of the Roman empire for themselves. The Visigoths (the Western Goths) settled in Spain and southern France, the Ostrogoths (the Eastern Goths) in Italy, and the Vandals in North Africa. Being a small minority relative to the populations they had conquered, eventually Goths and Vandals would assimilate into the local cultures.",
	DefaultColor = "black",
	UnitSounds = {
		"selected", "basic-germanic-voices-selected-group",
		"acknowledge", "basic-germanic-voices-acknowledge",
--		"attack", "basic-germanic-voices-attack",
		"ready", "basic-germanic-voices-ready",
		"help", "basic-germanic-voices-help",
		"help-town", "basic-germanic-voices-help-town"
	},
	PersonalNames = {
		-- Burgundian names
		"male", "Hanhualdus", -- presumably a male name; Source: Winfred P. Lehmann, "A Grammar of Proto-Germanic", 2005, 2.7.3.
	},
	ShipNames = {
		-- Norse Ship Names
		"Naglfar", -- ship of the giants in Norse mythology, whose helmsman is Hrym; made of dead men's nails; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 21.
		"Ringhorn", -- Balder's ship in Norse mythology in which he was cremanted; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 155, 249.
		"Skidbladnir", -- ship built by dwarves in Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 101.
		"Skrauti" -- dragon ship which appears in the Norse saga of Sörli the Strong; Sörli might be Norse himself, but the source does not mention his actual origins; the name means "precious thing"; Source: Paul Beekman Taylor, "Searoniðas: Old Norse Magic and Old English Verse", 1983, p. 119.
	},
	HistoricalUpgrades = {
		180, "upgrade-teuton-spatha", true -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineCivilization("greek", {
	Display = "Greek",
	Visible = false,
	Species = "human",
	Language = "greek",
	ParentCivilization = "latin",
	Adjective = "Greek",
	Playable = false,
	CivilizationUpgrade = "upgrade-greek-civilization",
	Description = "During the late Stone Age, Indo-Europeans migrated from the Pontic steppes to a number of areas in Europe and beyond, displacing, mixing with, and assimilating previous populations. Those who migrated to Greece spoke their own dialect of Indo-European, which eventually would develop into Ancient Greek. Initially a backwater in comparison to the Near East, Greece would eventually become one of the main centers of civilization in antiquity, being widely renowned for the achievements of its people. The rise of the Macedonian empire spread the influence of Greek culture through much of the eastern Mediterranean, Persia, and beyond, and even after the Roman conquest Greek remained widely spoken (both as a mother tongue and as a lingua franca) in the eastern half of the Mediterranean.",
	UnitSounds = {
		"selected", "basic-greek-voices-selected-group",
		"acknowledge", "basic-greek-voices-acknowledge",
--		"attack", "basic-greek-voices-attack",
		"ready", "basic-greek-voices-ready",
		"help", "basic-english-voices-help",
		"help-town", "basic-english-voices-help-town"
	},
	HistoricalUpgrades = {
		-4000, "upgrade-wood-plow", true, -- Indo-Europeans possessed plows (as indicated by the existence of a word for plow in their vocabulary); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 104.
		-1700, "upgrade-writing", true, -- Linear B tablets found in Mycenae belonging to the period between 1700 and 1200 BC; Source: "Atlas de História Mundial", 2001, p. 67.
		-1400, "upgrade-masonry", true -- Construction of palaces in continental Greece around 1400 BC; Source: "Atlas de História Mundial", 2001, p. 66.
	}
	--[[
	SettlementNames = {
		"Abdera",
		"Abydus",
		"Acragas", -- Agrigentum
		"Agathe",
		"Ainos",
		"Alonae",
		"Amphipolis",
		"Apollonia",
		"Calchedon", -- Chalcedon
		"Callatis",
		"Callipolis",
		"Camarina",
		"Catana",
		"Caulonia",
		"Chalcis",
		"Cius",
		"Cotyora",
		"Cume", -- Cumae
		"Cydonia",
		"Dioscurias",
		"Elea",
		"Elis",
		"Emporiae", -- Emporium
		"Ephesus",
		"Epidamnus", -- Dyrrhachium
		"Gela",
		"Halicarnassus",
		"Hemeroscopium",
		"Heraclea",
		"Heraclea Chersonesus",
		"Hesperis",
		"Himera",
		"Ilios",
		"Istrus",
		"Larissa",
		"Lissus",
		"Locri",
		"Medama",
		"Megara",
		"Megara Hyblaca",
		"Mesambria",
		"Metapontium",
		"Methone",
		"Miletus",
		"Motye",
		"Naucratis",
		"Naupactus",
		"Naxos",
		"Nicopolis",
		"Odessus",
		"Olbia",
		"Parthenope", -- Neapolis/Naples
		"Perinthus",
		"Phasis",
		"Pityus",
		"Posidonia", -- Paestum
		"Rhegium",
		"Rhodae",
		"Salamis",
		"Selimis",
		"Selinus",
		"Selymbria",
		"Smyrna",
		"Soli",
		"Sparta",
		"Sybaris",
		"Tanais",
		"Taras", -- Tarentum
		"Theodosia",
		"Thurii",
		"Tomi",
		"Trapezus",
		"Zacynthus", -- Saguntum
		"Zancle" -- Messana
	}
	--]]
})

DefineCivilization("assyrian", {
	Display = "Assyrian",
	Visible = false,
	Species = "human",
	ParentCivilization = "greek",
	Adjective = "Assyrian",
	Playable = false,
	HistoricalUpgrades = {
		-3500, "upgrade-writing", true, -- writing was developed in Sumeria around 3500 BC; Source: Isaac Asimov, "Cronologia das Ciências e das Descobertas", 1993, pp. 70-72.
		-1800, "upgrade-mathematics", true -- the Sumerian/Babylonian numerical system was developed around 1800 BC; Source: Isaac Asimov, "Cronologia das Ciências e das Descobertas", 1993, p. 82.
	}
})

DefineCivilization("babylonian", {
	Display = "Babylonian",
	Visible = false,
	Species = "human",
	ParentCivilization = "greek",
	Adjective = "Babylonian",
	Playable = false,
	HistoricalUpgrades = {
		-3500, "upgrade-writing", true, -- writing was developed in Sumeria around 3500 BC; Source: Isaac Asimov, "Cronologia das Ciências e das Descobertas", 1993, pp. 70-72.
		-1800, "upgrade-mathematics", true -- the Sumerian/Babylonian numerical system was developed around 1800 BC; Source: Isaac Asimov, "Cronologia das Ciências e das Descobertas", 1993, p. 82.
	}
})

DefineCivilization("chinese", {
	Display = "Chinese",
	Visible = false,
	Species = "human",
	ParentCivilization = "greek",
	Adjective = "Chinese",
	Playable = false,
	HistoricalUpgrades = {
		1044, "upgrade_gunpowder", true -- gunpowder had already been discovered in China in 1044; Source: Isaac Asimov, "Cronologia das Ciências e das Descobertas", 1993, pp. 169-170.
	}
})

DefineCivilization("egyptian", {
	Display = "Egyptian",
	Visible = false,
	Species = "human",
	ParentCivilization = "greek",
	Adjective = "Egyptian",
	Playable = false,
	DefaultColor = "yellow",
	CivilizationUpgrade = "upgrade-egyptian-civilization",
	PersonalNames = {
		"male", "Amenofis", -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 112.
		"male", "Isi", -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 81.
		"male", "Seti" -- Source: Claude Traunecker, "Os Deuses do Egito", 1992, p. 90.
	}
})

DefineCivilization("hebrew", {
	Display = "Hebrew",
	Visible = false,
	Species = "human",
	ParentCivilization = "greek",
	Adjective = "Hebrew",
	Playable = false
})

DefineCivilization("hittite", {
	Display = "Hittite",
	Visible = false,
	Species = "human",
--	Language = "hittite",
	ParentCivilization = "greek",
	Adjective = "Hittite",
	Playable = false,
	HistoricalUpgrades = {
		-4000, "upgrade-wood-plow", true -- Indo-Europeans possessed plows (as indicated by the existence of a word for plow in their vocabulary); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 104.
	}
})

DefineCivilization("illyrian", {
	Display = "Illyrian",
	Visible = false,
	Species = "human",
	Language = "illyrian",
	ParentCivilization = "greek",
	Adjective = "Illyrian",
	Playable = false,
	HistoricalUpgrades = {
		-4000, "upgrade-wood-plow", true -- Indo-Europeans possessed plows (as indicated by the existence of a word for plow in their vocabulary); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 104.
	}
})

DefineCivilization("minoan", {
	Display = "Minoan",
	Visible = false,
	Species = "human",
	Language = "minoan",
	ParentCivilization = "greek",
	Adjective = "Minoan",
	Playable = false
})

DefineCivilization("norse", {
	Display = "Norse",
	Visible = true,
	Species = "human",
	Language = "old-norse",
	ParentCivilization = "teuton",
	Adjective = "Norse",
	DefaultColor = "blue",
	DevelopsFrom = {"germanic"},
	CivilizationUpgrade = "upgrade_norse_civilization",
	Calendar = "norse_calendar",
	Description = "During the Iron Age, Germanic peoples split off into three different groups - the North Germanics (like the Danes and Swedes), the East Germanics (like the Goths and Vandals) and the West Germanics (like the Suebi, Saxons and Franks). While late antiquity saw intense migration of Germanic peoples, the Danes and Swedes remained largely in Scandinavia, well beyond the developments of the Mediterranean.",
	UnitSounds = {
		"selected", "basic-germanic-voices-selected-group",
		"acknowledge", "basic-germanic-voices-acknowledge",
--		"attack", "basic-germanic-voices-attack",
		"ready", "basic-germanic-voices-ready",
		"help", "basic-germanic-voices-help",
		"help-town", "basic-germanic-voices-help-town"
	},
	PersonalNames = {
		"male", "Biari", -- Old Swedish name; Source: August Fick and Alf Torp, "Wortschatz der Germanischen Spracheinheit", 2006, p. 136.
		"male", "Hathuwulf", -- Hathuwulf is a chieftain whose name appeared in a runestone at Stentoften in Blekinge; Source: Anders Andrén, "Behind Heathendom: Archaeological Studies of Old Norse Religion", 2005, p. 118.
		"male", "Lytir" -- male name which means "lot-reader" or "speaker of truth"; Source: Anders Andrén, "Behind Heathendom: Archaeological Studies of Old Norse Religion", 2005, p. 119.
	},
	ShipNames = {
		"Naglfar", -- ship of the giants in Norse mythology, whose helmsman is Hrym; made of dead men's nails; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, p. 21.
		"Ringhorn", -- Balder's ship in Norse mythology in which he was cremanted; Source: Kevin Crossley-Holland, "The Norse Myths", 1980, pp. 155, 249.
		"Skidbladnir", -- ship built by dwarves in Norse mythology; Source: Henry Adams Bellows (transl.), "The Poetic Edda", 1936, pp. 101.
		"Skrauti" -- dragon ship which appears in the Norse saga of Sörli the Strong; Sörli might be Norse himself, but the source does not mention his actual origins; the name means "precious thing"; Source: Paul Beekman Taylor, "Searoniðas: Old Norse Magic and Old English Verse", 1983, p. 119.
	},
	--[[
	SettlementNames = {
		"Hals", -- Danish
		"Sorgenfri" -- Danish
	},
	--]]
	ProvinceNames = {
		"Gardarike"
	},
	HistoricalUpgrades = {
		180, "upgrade-teuton-spatha", true -- In the 180-400 AD period, Germanic peoples began forging long cavalry swords; Source: C. Scott Littleton, "The Germanic Sword in the Tree: Parallel Development or Diffusion?", The Heroic Age (11), 2008, p. 4.
	}
})

DefineCivilization("baltic", {
	Display = "Baltic",
	Visible = false,
	Species = "human",
--	Language = "lithuanian",
	ParentCivilization = "norse",
	Adjective = "Baltic",
	Playable = false,
	HistoricalUpgrades = {
		-4000, "upgrade-wood-plow", true -- Indo-Europeans possessed plows (as indicated by the existence of a word for plow in their vocabulary); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 104.
	}
})

DefineCivilization("uralic", {
	Display = "Uralic",
	Visible = false,
	Species = "human",
	Language = "proto-uralic",
	ParentCivilization = "germanic",
	Adjective = "Uralic",
	Playable = false
})

DefineCivilization("finnish", {
	Display = "Finnish",
	Visible = false,
	Species = "human",
	Language = "finnish",
	ParentCivilization = "norse",
	Adjective = "Finnish",
	Playable = false,
	DevelopsFrom = {"uralic"}
})

DefineCivilization("iberian", { -- the Iberian-speaking cultures of antiquity, such as the Oretanians
	Display = "Iberian",
	Visible = false,
	Species = "human",
	ParentCivilization = "germanic",
	Adjective = "Iberian",
	Playable = false,
	DefaultColor = "brown"
})

DefineCivilization("magyar", {
	Display = "Magyar",
	Visible = false,
	Species = "human",
--	Language = "hungarian",
	ParentCivilization = "teuton",
	Adjective = "Magyar",
	Playable = false,
	DevelopsFrom = {"uralic"}
})

DefineCivilization("persian", {
	Display = "Persian",
	Visible = false,
	Species = "human",
	Language = "avestan",
	ParentCivilization = "greek",
	Adjective = "Persian",
	Playable = false
})

DefineCivilization("phoenician", {
	Display = "Phoenician",
	Visible = false,
	Species = "human",
	ParentCivilization = "persian",
	Adjective = "Phoenician",
	Playable = false,
	DefaultColor = "black",
	HistoricalUpgrades = {
		-1100, "upgrade_celestial_navigation", true -- around 1100 BC the Phoenicians began using celestial navigation (using Ursa Major as a base) to securely sail the open seas in the Mediterranean; Source: Isaac Asimov, "Cronologia das Ciências e das Descobertas", 1993, pp. 90-91.
	}
})

DefineCivilization("phrygian", {
	Display = "Phrygian",
	Visible = false,
	Species = "human",
	Language = "phrygian",
	ParentCivilization = "greek",
	Adjective = "Phrygian",
	Playable = false,
	HistoricalUpgrades = {
		-4000, "upgrade-wood-plow", true -- Indo-Europeans possessed plows (as indicated by the existence of a word for plow in their vocabulary); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 104.
	}
})

DefineCivilization("slav", {
	Display = "Slav",
	Visible = false,
	Species = "human",
	Language = "proto-slavic",
	ParentCivilization = "norse", -- so that it can use Norse units and buildings
	Adjective = "Slavic",
	Playable = false,
	DefaultColor = "blue",
	CivilizationUpgrade = "upgrade-slavic-civilization",
	UnitSounds = {
		"selected", "basic-greek-voices-selected-group",
		"acknowledge", "basic-greek-voices-acknowledge",
--		"attack", "basic-greek-voices-attack",
		"ready", "basic-greek-voices-ready",
		"help", "basic-english-voices-help",
		"help-town", "basic-english-voices-help-town"
	},
	HistoricalUpgrades = {
		-4000, "upgrade-wood-plow", true -- Indo-Europeans possessed plows (as indicated by the existence of a word for plow in their vocabulary); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 104.
	},
	PersonalNames = {
		-- Czech names
		"female", "Judita", -- wife of Vladislav II; ordered Judita Bridge (across the Vltava river in Prague) built in 1158; Source: Alena Ježková, "77 Prague Legends", 2006, p. 45.
		"male", "Boleslav", -- Boleslav I of Bohemia; ruled over Bohemia in 929-967; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 615.
		"male", "Boleslav", -- Boleslav II of Bohemia; duke of Bohemia until 999, when he died; massacred House Slavnik in 995; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 616-617.
		"male", "Boleslav", -- Boleslav III of Bohemia; succeeded Boleslav II of Bohemia; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 616.
		"male", "Borivoj", -- "Bořivoj"; Bořivoj was duke of Bohemia in 874 when he recognized the overlordship of Svatopluk of Moravia; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 607.
		"male", "Borivoj", -- "Bořivoj"; Bořivoj II of Bohemia until 1120, when he was driven out by his brother Vladislav; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 622.
		"male", "Bretislav", -- "Břetislav"; Duke Břetislav I of Bohemia in 1037-1055; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 618.
		"male", "Bretislav", -- "Břetislav"; Břetislav II of Bohemia in 1061-1092; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 621.
		"male", "Hanus", -- Master Hanuš of Růže, perfected Prague's Old Town Astronomical Clock in the 15th century; Source: Alena Ježková, "77 Prague Legends", 2006, p. 10.
		"male", "Jan", -- Jan Jesenius; physician and professor of Prague's Charles University; executed in the 21st of June 1621 for rebelling against Emperor Ferdinand II; only 10 years later it would be allowed to take his head from public display and be buried; Source: Alena Ježková, "77 Prague Legends", 2006, p. 13.
		"male", "Jaromir", -- "Jaromíř"; became duke of Bohemia in 1004; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 618.
		"male", "Krystof", -- Kryštof Harant of Polžice; traveller; executed in the 21st of June 1621 for rebelling against Emperor Ferdinand II; only 10 years later it would be allowed to take his head from public display and be buried; Source: Alena Ježková, "77 Prague Legends", 2006, p. 13.
		"male", "Mikulas", -- Mikulás of Kadaň; built Prague's Old Town Astronomical Clock before 1410; Source: Alena Ježková, "77 Prague Legends", 2006, p. 10.
		"male", "Mojmir", -- "Mojmír"; Moravian ruler between 830 and 846; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 606.
		"male", "Mydlar", -- "Mydlář"; executioner who killed the Czech lords that had rebelled against Emperor Ferdinand II; executed the Czech lords in 21st of June 1621; Source: Alena Ježková, "77 Prague Legends", 2006, p. 13.
		"male", "Oldrich", -- "Oldřich"; was duke of Bohemia until 1037; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 618.
		"male", "Petr", -- the foundation stone of a new bridge to replace Judita Bridge was laid in the 9th of July 1357 by Emperor and King Charles IV; the construction of this new bridge was entrusted to Petr Parléř, who had built St Vitus' Cathedral; Source: Alena Ježková, "77 Prague Legends", 2006, p. 45.
		"male", "Ratislav", -- Ratislav succeeded Mojmír in Moravia in 846; Ratislav was captured and placed on a monastery by the Franks in 869; was a Christian; described as clear-headed and able; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 606-608.
		"male", "Slavitah", -- duke Slavitah of Bohemia was driven from his lands by the Franks two years after Lothar I's attack on Moravia in 855; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 606.
		"male", "Sobeslav", -- "Soběslav"; King Soběslav II of Bohemia in 1173-1179; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 628.
		"male", "Spytihnev", -- "Spytihněv"; duke of Bohemia; recognized German overlordship in 895; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 612-613.
		"male", "Spytihnev", -- "Spytihněv"; brother to Boleslav III of Bohemia; deposed his brother and took control of Bohemia; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 616.
		"male", "Spytihnev", -- "Spytihněv"; was Duke Spytihněv II of Bohemia in 1055-1061; son of Břetislav I of Bohemia and Judith von Babenberg; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 620.
		"male", "Svatopluk", -- Svatopluk was (apparently) duke of Moravia in 874 when peace was made with East Francia; Svatopluk raided the frontier of Bavaria in 869; died in 892; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 606-607.
		"male", "Vaclav", -- "Václav"; Václav succeeded his father Vratislav in 921 in Bohemia; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 613.
		"male", "Vaclav", -- "Václav"; King Václav I of Bohemia in 1230-1253; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 627.
		"male", "Vaclav", -- Vacláv Budovec of Budov; scholar and writer; executed in the 21st of June 1621 for his role in the rebellion against Emperor Ferdinand II; he was 74 years old when executed; only 10 years later it would be allowed to take his head from public display and be buried; Source: Alena Ježková, "77 Prague Legends", 2006, p. 13.
		"male", "Viztrach", -- duke of Bohemia; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 606.
		"male", "Vladislav", -- drove out his brother, Bořivoj II of Bohemia, in 1120, becoming Vladislav I of Bohemia; died in 1125; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 622.
		"male", "Vojtech", -- "Vojtěch Slavnik"; born in 956; known as St. Adalbert, in 983 became bishop of Prague; murdered on 23 April 997; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, p. 617.
		"male", "Vratislav" -- succeeded his brother Spytihněv as duke of Bohemia, reigning until 921; Source: James Westfall Thompson, "Medieval German Expansion in Bohemia", 1926, pp. 612-613.
	}
})

DefineCivilization("sumerian", {
	Display = "Sumerian",
	Visible = false,
	Species = "human",
	ParentCivilization = "greek",
	Adjective = "Sumerian",
	Playable = false,
	HistoricalUpgrades = {
		-3500, "upgrade-writing", true, -- writing was developed in Sumeria around 3500 BC; Source: Isaac Asimov, "Cronologia das Ciências e das Descobertas", 1993, pp. 70-72.
		-1800, "upgrade-mathematics", true -- the Sumerian/Babylonian numerical system was developed around 1800 BC; Source: Isaac Asimov, "Cronologia das Ciências e das Descobertas", 1993, p. 82.
	}
})

DefineCivilization("thracian", {
	Display = "Thracian",
	Visible = false,
	Species = "human",
	Language = "thracian",
	ParentCivilization = "greek",
	Adjective = "Thracian",
	Playable = false,
	HistoricalUpgrades = {
		-4000, "upgrade-wood-plow", true -- Indo-Europeans possessed plows (as indicated by the existence of a word for plow in their vocabulary); Source: "Ancient Europe 8000 B.C.-A.D. 1000: Encyclopedia of the Barbarian World", 2004, vol. 1, p. 104.
	}
})

DefineCivilization("treant", {
	Display = "Treant",
	Visible = false,
	Species = "treant",
	ParentCivilization = "neutral",
	Adjective = "Treant",
	Playable = false,
	DefaultColor = "green",
	PersonalNames = {
		"male", "Bludebalmen", -- from Battle for Wesnoth
		"male", "Boladrumbadrum", -- from Battle for Wesnoth
		"male", "Bolwuldelman", -- from Battle for Wesnoth
		"male", "Bombempomgontor", -- from Battle for Wesnoth
		"male", "Bomtanbomkenton", -- from Battle for Wesnoth
		"male", "Bomtanbomtonum", -- from Battle for Wesnoth
		"male", "Bregalad", -- from Battle for Wesnoth
		"male", "Bremdebubde", -- from Battle for Wesnoth
		"male", "Brenbasnudnem", -- from Battle for Wesnoth
		"male", "Brendumadoak", -- from Battle for Wesnoth
		"male", "Brommantendronnor", -- from Battle for Wesnoth
		"male", "Brumbendublun", -- from Battle for Wesnoth
		"male", "Brumennarunom", -- from Battle for Wesnoth
		"male", "Brummdlebroak", -- from Battle for Wesnoth
		"male", "Bumbadadabum", -- from Battle for Wesnoth
		"male", "Buomdumdenlol", -- from Battle for Wesnoth
		"male", "Carnimirië", -- from Battle for Wesnoth
		"male", "Dabumdabumtam", -- from Battle for Wesnoth
		"male", "Dammantongonnur", -- from Battle for Wesnoth
		"male", "Danmonlulbam", -- from Battle for Wesnoth
		"male", "Debundbemun", -- from Battle for Wesnoth
		"male", "Delmduelmdelom", -- from Battle for Wesnoth
		"male", "Diblembumnde", -- from Battle for Wesnoth
		"male", "Dolmannumbil", -- from Battle for Wesnoth
		"male", "Drongnoblemdu", -- from Battle for Wesnoth
		"male", "Dulmandarook", -- from Battle for Wesnoth
		"male", "Dulwulmendom", -- from Battle for Wesnoth
		"male", "Dumdumdumatum", -- from Battle for Wesnoth
		"male", "Elmaroomadrum", -- from Battle for Wesnoth
		"male", "Grelmadrumbumadum", -- from Battle for Wesnoth
		"male", "Gulladroamadoak", -- from Battle for Wesnoth
		"male", "Gumabeladrelm", -- from Battle for Wesnoth
		"male", "Laffalialomdium", -- from Battle for Wesnoth
		"male", "Landunwonbam", -- from Battle for Wesnoth
		"male", "Lassemista", -- from Battle for Wesnoth
		"male", "Lefnublemdde", -- from Battle for Wesnoth
		"male", "Libleddnumm", -- from Battle for Wesnoth
		"male", "Lolmandindel", -- from Battle for Wesnoth
		"male", "Monlamwimdan", -- from Battle for Wesnoth
		"male", "Muldondindal", -- from Battle for Wesnoth
		"male", "Mundionalafla", -- from Battle for Wesnoth
		"male", "Mundumblemdum", -- from Battle for Wesnoth
		"male", "Munnamdulbon", -- from Battle for Wesnoth
		"male", "Nanmildaldum", -- from Battle for Wesnoth
		"male", "Nunmaldildun", -- from Battle for Wesnoth
		"male", "Orofarnië", -- from Battle for Wesnoth
		"male", "Pambedrumne", -- from Battle for Wesnoth
		"male", "Pomtamkomtrobum", -- from Battle for Wesnoth
		"male", "Rithramcamhan", -- from Battle for Wesnoth
		"male", "Tantondernintan", -- from Battle for Wesnoth
		"male", "Temtundembenn", -- from Battle for Wesnoth
		"male", "Temtunnongetem", -- from Battle for Wesnoth
		"male", "Tondenkontenkon", -- from Battle for Wesnoth
		"male", "Troombadoom", -- from Battle for Wesnoth
		"male", "Tumtentantarun", -- from Battle for Wesnoth
		"male", "Tumtonnongatum", -- from Battle for Wesnoth
		"male", "Tumtumgamtomtom", -- from Battle for Wesnoth
		"male", "Wonrunmaldin", -- from Battle for Wesnoth
		"male", "Wudadoonopl"
	}
})

DefineCivilization("turkish", {
	Display = "Turkish",
	Visible = false,
	Species = "human",
	ParentCivilization = "greek", -- so that it can use Greek/Latin units and buildings
	Adjective = "Turkish",
	Playable = false
})

DefineCivilization("aztec", {
	Display = "Aztec",
	Visible = false,
	Species = "human",
	ParentCivilization = "greek",
	Adjective = "Aztec",
	Playable = false,
	HistoricalUpgrades = {
	}
})

-- Cyclops names: Arges ("Vivid"), Brontes ("Thunderer"), Polyphemus (name means "many-voiced"), Steropes ("Lightner"), Tepegoz (an ogre with a single eye from Turkic mythology; apparently derived from the Greek Polyphemus myth; Tepe means "top, crown of the head" and Göz means "eye"), Depeghoz (Depêghöz, same as Tepegoz, given by Jacob Grimm in Teutonic Mythology, p. 424)

-- deity civilizations

DefineCivilization("aesir", {
	Display = "Aesir",
	Visible = false,
	ParentCivilization = "neutral",
	Language = "old-norse",
	Adjective = "Aesir",
	DefaultColor = "blue",
	Playable = false,
	ButtonIcons = {
		"move", "icon-dwarven-boots",
		"stop", "icon-germanic-wooden-oblong-shield",
		"attack", "icon-germanic-short-sword",
		"patrol", "icon-germanic-patrol-land",
		"stand-ground", "icon-germanic-stand-ground",
		"return-goods", "icon-germanic-return-goods"
	},
	UIFillers = {
		"interface/germanic/filler_bottom.png", 380, -181,
		"interface/germanic/resource.png", 0, 0,
		"interface/germanic/buttonpanel.png", -256, -200,
		"interface/germanic/infopanel.png", 0, -200
	},
	HistoricalUpgrades = { -- give the Aesir iron weapons and armor from the beginning
		0, "upgrade_ironworking", true,
		0, "upgrade-germanic-broad-sword", true,
		0, "upgrade-teuton-spatha", true,
		0, "upgrade-germanic-bronze-shield", true,
		0, "upgrade-teuton-iron-shield", true
	}
})


Load("scripts/factions.lua")

function GetCivilizationID(civilization)
	local civilizations = GetCivilizations()
	for i=1,table.getn(civilizations) do
		if (civilizations[i] == civilization) then
			return i - 1
		end
	end
	return -1
end
