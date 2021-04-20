import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: campaign_menu
	title: "Scenarios"
	
	Dropdown {
		id: campaign_dropdown
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.top: parent.title_element.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor * 4
		width: 250 * wyrmgus.defines.scale_factor
		entries: wyrmgus.get_available_campaigns()
		
		onEntriesChanged: {
			campaign_dropdown.set_selected_entry(wyrmgus.preferences.selected_campaign)
		}
		
		onSelectedEntryChanged: {
			if (wyrmgus.preferences.selected_campaign !== campaign_dropdown.selectedEntry) {
				wyrmgus.preferences.selected_campaign = campaign_dropdown.selectedEntry
				wyrmgus.preferences.save()
			}
		}
		
		Connections {
			target: wyrmgus
			onRunningChanged: {
				if (!wyrmgus.running) {
					//refresh the campaign list when a game has ended, as new campaigns may have become available
					campaign_dropdown.entries = wyrmgus.get_available_campaigns()
				}
			}
		}
		
		function get_entry_name(entry) {
			var name = entry.name
			
			if (entry.quest !== null && !entry.quest.completed) {
				name += " " + highlight("(!)")
			}
			
			return name
		}
	}
	
	ScrollableTextArea {
		property var campaign: wyrmgus.preferences.selected_campaign
		
		id: text_area
		anchors.left: parent.left
		anchors.leftMargin: 32 * wyrmgus.defines.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 32 * wyrmgus.defines.scale_factor
		anchors.top: campaign_dropdown.bottom
		anchors.topMargin: 16 * wyrmgus.defines.scale_factor
		anchors.bottom: difficulty_label.top
		anchors.bottomMargin: 16 * wyrmgus.defines.scale_factor
		text: "Faction: " + campaign.faction.name + " (" + campaign.faction.civilization.name + ")\n\nStart Year: " + year_string(campaign.start_date.getFullYear()) + "\n\nDescription: " + campaign.description + "\n\nHighest Completed Difficulty: " + (campaign.quest ? wyrmgus.get_difficulty_name(campaign.quest.highest_completed_difficulty_index) : "Unknown")
	}
	
	NormalText {
		id: difficulty_label
		text: "Difficulty:"
		anchors.horizontalCenter: difficulty_dropdown.horizontalCenter
		anchors.bottom: difficulty_dropdown.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
	}
	
	Dropdown {
		id: difficulty_dropdown
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: start_scenario_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor + (height * entries.length)
		width: 100 * wyrmgus.defines.scale_factor
		entries: wyrmgus.get_difficulties()
		
		onEntriesChanged: {
			set_selected_entry(wyrmgus.preferences.get_difficulty_index())
		}
		
		onSelectedEntryChanged: {
			if (wyrmgus.preferences.get_difficulty_index() !== selectedEntry) {
				wyrmgus.preferences.set_difficulty_index(selectedEntry)
				wyrmgus.preferences.save()
			}
		}
		
		function get_entry_name(entry) {
			return wyrmgus.get_difficulty_name(entry)
		}
	}
	
	LargeButton {
		id: start_scenario_button
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: previous_menu_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		text: "Start Scenario"
		hotkey: "s"
		lua_command: "SetCurrentCampaign(\"" + wyrmgus.preferences.selected_campaign.identifier + "\"); RunningScenario = true; GetMapInfo(\"scripts/map_templates/campaign.smp\"); GameSettings.Difficulty = " + wyrmgus.preferences.get_difficulty_index() + "; RunMap(\"scripts/map_templates/campaign.smp\");"
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		lua_command: "SetCurrentCampaign(\"\");"
	}
}
