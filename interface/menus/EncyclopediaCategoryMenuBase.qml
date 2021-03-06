import QtQuick 2.12
import QtQuick.Controls 2.12
import ".."

MenuBase {
	id: encyclopedia_category_menu
	focus: true //true even if the game is running, so that the encyclopedia can be used in that case
	title: "Encyclopedia: " + category_name
	
	property string category_name: ""
	property string category: ""
	property var entries: []
	property var button_component: null
	readonly property var button_area_item: button_area
	
	Flickable {
		id: button_area
		anchors.left: parent.left
		anchors.leftMargin: 8 * wyrmgus.defines.scale_factor
		anchors.right: parent.right
		anchors.rightMargin: 8 * wyrmgus.defines.scale_factor
		anchors.top: parent.title_element.bottom
		anchors.topMargin: 8 * wyrmgus.defines.scale_factor
		anchors.bottom: previous_menu_button.top
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
		contentWidth: contentItem.childrenRect.width
		contentHeight: contentItem.childrenRect.height
		boundsBehavior: Flickable.StopAtBounds
		clip: true
		ScrollBar.vertical: ScrollBar {
			policy: ScrollBar.AsNeeded
		}
		
		Repeater {
			id: button_table
			model: encyclopedia_category_menu.entries
			delegate: button_component
		}
	}
	
	Keys.onPressed: {
		for (var i = 0; i < button_area.contentItem.children.length; ++i) {
			var child_element = button_area.contentItem.children[i]
			if (child_element.on_pressed_key) {
				child_element.on_pressed_key(event)
				if (event.accepted) {
					break
				}
			}
		}
	}
	
	Keys.onReleased: {
		for (var i = 0; i < button_area.contentItem.children.length; ++i) {
			var child_element = button_area.contentItem.children[i]
			if (child_element.on_released_key) {
				child_element.on_released_key(event)
				if (event.accepted) {
					break
				}
			}
		}
	}
	
	PreviousMenuButton {
		id: previous_menu_button
		anchors.bottom: parent.bottom
		anchors.bottomMargin: 8 * wyrmgus.defines.scale_factor
	}
}
