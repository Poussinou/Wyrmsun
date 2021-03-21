import QtQuick 2.12
import QtQuick.Controls 2.12

MenuBase {
	id: single_player_game_menu
	title: "Single Player"
	
	LargeButton {
		id: scenarios_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: legacy_quests_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Scenarios"
		hotkey: "s"
		lua_command: "single_player_menu:stop(); RunCampaignMenu();"
		
		onClicked: {
			menu_stack.push("CampaignMenu.qml")
		}
	}
	
	LargeButton {
		id: legacy_quests_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: custom_game_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Legacy Quests"
		hotkey: "q"
		lua_command: "RunQuestWorldMenu(); if (RunningScenario) then single_player_menu:stop() end;"
		
		onClicked: {
			menu_stack.push("LegacyQuestsMenu.qml")
		}
	}
	
	LargeButton {
		id: custom_game_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.verticalCenter: parent.verticalCenter
		text: "Custom Game"
		hotkey: "u"
		lua_command: "RunSinglePlayerCustomGameMenu(); if (RunningScenario) then single_player_menu:stop(1) end;"
	}
	
	LargeButton {
		id: load_game_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: custom_game_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Load Game"
		hotkey: "l"
		lua_command: "RunLoadGameMenu(); single_player_menu:stop(1);"
	}
	
	LargeButton {
		id: tech_tree_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: load_game_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		text: "Tech Tree"
		hotkey: "t"
		lua_command: "RunTechTreeMenu(0);"
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.top: tech_tree_button.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		lua_command: "single_player_menu:stop();"
	}
}
